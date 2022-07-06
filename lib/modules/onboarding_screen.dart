import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ogrty/modules/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../shared/components/components.dart';
import '../shared/language/app_localization.dart';
import '../shared/network/local/cache_helper.dart';
import '../shared/styles/colors.dart';
import '../shared/styles/sizes.dart';
import '../shared/styles/styles.dart';


class BoardModel {
  final String image;
  final String title;
  final String body;

  BoardModel({required this.image, required this.title, required this.body});
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late List<BoardModel> list;

  @override
  void initState() {
    super.initState();
  }

  var isLast = false;
  final controller = PageController();

  /// بعمل save لل ONBOARDING جوا ال cacheHelper
  void submit() {
    CacheHelper.saveData(key: 'onBoarding', value: true).
    then((value) {
      if(value!){
        navigateAndFinish(context,  HomeScreen(),);
      }

    });

  }

  @override
  Widget build(BuildContext context) {
    list = [
      BoardModel(
        image: 'assets/images/onboard1.png',
        title:AppLocalization.of(context)!.translate('enough_with_the_fear_of_society,_let\'s_calculate_the_wages')!,
        body: '',
      ),
      BoardModel(
        image: 'assets/images/onboard2.png',
        title: AppLocalization.of(context)!.translate('3_out_of_100_drivers')!,
        body: '',
      ),
      BoardModel(
        image: 'assets/images/onboard3.png',
        title:AppLocalization.of(context)!.translate('Let\'s_count_it')!,
        body: '',
      ),

    ];
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,

            actions: [
              TextButton( onPressed: submit,
          child:  Text(
            AppLocalization.of(context)!.translate('skip')!,
                style:const TextStyle(
                    color: secondColor,
                    fontWeight: FontWeight.bold)
                ,),
                  ),
              const Icon(Icons.arrow_forward_ios,color: secondColor,),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: PageView.builder(
                    physics:const BouncingScrollPhysics(),
                    onPageChanged: (int index) {
                      if (index == (list.length - 1) && !isLast) {
                        setState(() => isLast = true);
                      } else if (isLast) {
                        setState(() => isLast = false);
                      }
                    },
                    controller: controller,
                    itemCount: list.length,
                    itemBuilder: (context, i) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Image(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height:MediaQuery.of(context).size.height * 0.6,
                            image: AssetImage(
                              list[i].image,
                            ),
                          ),
                        ),
                        sizedBoxh1,
                        Text(
                          list[i].title,
                          style: black18regular()
                        ),
                        sizedBoxh1,
                        Text(
                          list[i].body,
                          style: black14bold(),
                        ),
                        SmoothPageIndicator(
                          count: list.length,
                          controller: controller,
                          effect: ScrollingDotsEffect(
                            dotColor: Color(0xffFFA65F),///TODO
                            activeDotColor: primaryColor,
                            dotWidth: 5,
                            dotHeight: 5,
                            spacing: 5.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              /// BUTTON
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    border: Border.all(color: primaryColor ),
                    borderRadius: BorderRadius.circular(30.0),

                  ),
                  width: double.infinity,
                  height: 40,
                  child:TextButton(
                    onPressed: () {
                      if (isLast) {
                        /// TODO this dont work????
                        submit();
                      } else {
                        controller.nextPage(
                          duration: const Duration(milliseconds: 750),
                          curve: Curves.fastLinearToSlowEaseIn,
                        );
                      }
                    },
                    child: Text(
                      isLast ?
                      AppLocalization.of(context)!.translate('start')! : AppLocalization.of(context)!.translate('next')! ,
                      style:white18regular(),),
                  ),

                ),
              ),
              sizedBoxh2,
              /// BLACK CONTAINER
              Container(color: secondColor,alignment: Alignment.bottomCenter,
                height:3,
                width:100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

