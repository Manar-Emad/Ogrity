import 'package:flutter/material.dart';
import 'package:ogrty/shared/components/components.dart';
import 'package:ogrty/shared/styles/colors.dart';
import 'package:ogrty/shared/styles/styles.dart';
import '../shared/language/app_localization.dart';
import '../shared/styles/sizes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();
  var numController = TextEditingController();
  var controller = TextEditingController();
  //double numController2 = double.parse(.text);
  //var list = [for (var i = 1; i <= 10; i++) i];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Card(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
              ),
                    elevation:3,
                    child: defContainer(context,
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: getWidth(context) / 3,
                                child: formFeild(
                                    controller: numController,
                                    type: TextInputType.none,
                                    validate: (value) {
                                      if (value.isEmpty) {
                                        return AppLocalization.of(context)!.translate(
                                            'please_enter_value')!;
                                      }
                                      return null;
                                    },
                                    txt:  AppLocalization.of(context)!.translate('skip')! ,
                                    focusedBorder: InputBorder.none,
                                    isClikable: true,
                                    disabledBorder: InputBorder.none
                                ),
                              ),
                              sizedBoxw2,
                              SizedBox(
                                width: getWidth(context) / 3,
                                child: formFeild(
                                    controller: controller,
                                    type: TextInputType.none,
                                    validate: (value) {
                                      if (value.isEmpty) {
                                        return AppLocalization.of(context)!.translate(
                                            'please_enter_value')!;
                                      }
                                      return null;
                                    },
                                    txt:  AppLocalization.of(context)!.translate('skip')! ,
                                    focusedBorder: InputBorder.none,
                                    isClikable: true,
                                    disabledBorder: InputBorder.none
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 17),
                            child: defaultButton(context,
                                function: (){}, text:AppLocalization.of(context)!.translate(
                     'skip')! , borderColor: primaryColor,color: primaryColor),
                          )
                        ],
                      ),
                      color: defTextColor
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation:3,
                  child: SizedBox(
                    height: getHeight(context)/2,
                    child: defContainer(context,
                      Row(
                        children: [
                         Expanded(
                           flex: 200,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                             Text(AppLocalization.of(context)!.translate('the_number')!
                             ,style: black14bold(),),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: defaultSeparatorWidth(separatorColor),
                               ),

                           ],),
                         ),
                         Expanded(child: Container(color: Colors.blue,
                           child: defaultSeparatorHeight(separatorColor),),flex: 1,),
                         Expanded(
                           flex: 200,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                           Text(AppLocalization.of(context)!.translate('skip')!,
                             style: black14bold(),
                           ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: defaultSeparatorWidth(separatorColor),
                               ),
                           ],),
                         ),
                        ],
                      ),
                  ),
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}

