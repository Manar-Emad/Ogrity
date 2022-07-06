import 'package:flutter/material.dart';
import 'package:ogrty/modules/language_screen.dart';
import 'package:ogrty/shared/components/components.dart';
import 'package:ogrty/shared/styles/colors.dart';
import 'package:ogrty/shared/styles/styles.dart';
import '../shared/language/app_localization.dart';
import '../shared/styles/sizes.dart';
import 'build_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var formKey = GlobalKey<FormState>();

  var ograPersonsController = TextEditingController();

  var ograFareController = TextEditingController();

  double ogra = 0;

  ///expanded
  bool _expanded1 = false;
  bool _expanded2 = false;
  bool _expanded3 = false;
  bool _expanded4 = false;
  bool _expanded5 = false;
  bool _expanded6 = false;

  // gradient: LinearGradient(
  // begin: Alignment.topRight,
  // end: Alignment.bottomLeft,
  // colors: [Colors.green[300],Colors.yellow[400]])
  @override 
  void initState() {
    // TODO: implement initState
    super.initState();
    ograFareController.text="0";
    ograPersonsController.text="0";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        navigateTo(context, const LanguageScreen());
                      },
                      child: Text(
                        AppLocalization.of(context)!
                            .translate('change_language')!,
                        style: const TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: primaryColor,
                      size: 15,
                    ),
                  ],
                ),
              ),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                      height: getHeight(context) / 3.6,
                      child: Stack(
                        children: [
                          Container(
                            decoration:  BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                                image:  const DecorationImage(
                                    image:  AssetImage('assets/images/2.jpg',),
                                    fit: BoxFit.cover,
                                  ),
                          ),),
                          Card(
                            color: Colors.transparent,
                            //elevation: 3,
                            shape:RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15),) ,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child:Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: getWidth(context) / 3,
                                          child: formFeild(
                                            label: 'اجرة الفرد',
                                            controller: ograPersonsController,
                                            type: TextInputType.number,
                                            validate: (value) {
                                              if (value.isEmpty) {
                                                return AppLocalization.of(context)!
                                                    .translate(
                                                        'please_enter_value')!;
                                              }
                                              return null;
                                            },
                                            txt: AppLocalization.of(context)!
                                                .translate('per_person')!,
                                            focusedBorder: InputBorder.none,
                                            isClikable: true,
                                            disabledBorder: InputBorder.none,
                                          ),
                                        ),
                                        sizedBoxw2,
                                        SizedBox(
                                          width: getWidth(context) / 3,
                                          child: formFeild(label: 'عدد الركاب',
                                              controller: ograFareController,
                                              type: TextInputType.none,
                                              validate: (value) {
                                                if (value.isEmpty) {
                                                  return AppLocalization.of(
                                                          context)!
                                                      .translate(
                                                          'please_enter_value')!;
                                                }
                                                return null;
                                              },
                                              txt: AppLocalization.of(context)!
                                                  .translate(
                                                      'number_of_passengers')!,
                                              focusedBorder: InputBorder.none,
                                              isClikable: true,
                                              disabledBorder: InputBorder.none),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 17, bottom: 14),
                                    child: defaultButton(
                                      context,
                                      function: () {
                                        if (formKey.currentState!.validate()) {}
                                        setState(() {
                                          ogra = (double.parse(ograPersonsController.text) * double.parse(ograFareController.text));
                                        });
                                      },
                                      text: AppLocalization.of(context)!
                                          .translate('count')!,
                                      txtColor: whiteColor.withOpacity(.8),
                                      borderColor: secondColor.withOpacity(.4),
                                      color: secondColor.withOpacity(.4),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 60,
                                      ),
                                      Text(
                                        AppLocalization.of(context)!
                                            .translate('driver_fare')!,
                                        style: black18bold(),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        child: SizedBox(
                                          width: getWidth(context) / 3,
                                          child: defaultSeparator(
                                              separatorColor2.withOpacity(.5)),
                                        ),
                                      ),
                                      Text(
                                        ogra.toString(),
                                        style: black18bold(),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Text(
                  AppLocalization.of(context)!
                      .translate('individual_fare')!,textAlign: TextAlign.end,
                  style: black18bold(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: getHeight(context) / 2,
                  child: Card(
                   child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              const Expanded(
                                flex: 1,
                                child: SizedBox(
                                  width: 1,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  AppLocalization.of(context)!
                                      .translate('the_number')!,
                                  style: prim16bold(),
                                ),
                              ),
                              const Expanded(
                                flex: 2,
                                child: SizedBox(
                                  width: 1,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  AppLocalization.of(context)!
                                      .translate('fare')!,
                                  style: prim16bold(),
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: SizedBox(
                                  width: 1,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            child: defaultSeparator(separatorColor.withOpacity(.5)),
                          ),
                          Column(children:  List.generate(14, (index) =>
                              Column(
                                children: [
                                  tableRow(context,
                                      txt1:( index+1).toString(),
                                      txt2:calculateOgra(perPerson:double.parse(ograPersonsController.text)
                                          , numOfPassenger: int.parse(ograFareController.text), index: (index+1)),
                                    /*calculateFare(numOfPassenger:(index+1) ,perPerson: perPerson,section:sections ),*/
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    child: defaultSeparator(separatorColor.withOpacity(.5)),
                                  ),
                                ],
                              ),
                          ),),
                          sizedBoxh1,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Text(
                  AppLocalization.of(context)!
                      .translate('rest_of_the_fare')!,
                  style: black16bold(),
                ),
              ),
              classes(
                context,
                _expanded1,
                'class_200',
                () {
                  setState(() {
                    _expanded1 = !_expanded1;
                  });
                },
                BuildRow(
                sections: 200,
                perPerson:double.parse(ograPersonsController.text),
                ),
              ),
              classes(
                context,
                _expanded2,
                'class_100',
                () {
                  setState(() {
                    _expanded2 = !_expanded2;
                  });
                },
                BuildRow(
                  sections: 100,
                  perPerson:double.parse(ograPersonsController.text),
                ),
              ),
              classes(
                context,
                _expanded3,
                'class_50',
                () {
                  setState(() {
                    _expanded3 = !_expanded3;
                  });
                },
                BuildRow(
                  sections: 50,
                  perPerson:double.parse(ograPersonsController.text),
                ),
              ),
              classes(
                context,
                _expanded4,
                'class_20',
                () {
                  setState(() {
                    _expanded4 = !_expanded4;
                  });
                },
                BuildRow(
                  sections: 20,
                  perPerson:double.parse(ograPersonsController.text),
                ),
              ),
              classes(
                context,
                _expanded5,
                'class_10',
                () {
                  setState(() {
                    _expanded5 = !_expanded5;
                  });
                },
                BuildRow(
                  sections: 10,
                  perPerson:double.parse(ograPersonsController.text),
                ),
              ),
              classes(
                context,
                _expanded6,
                'class_5',
                () {
                  setState(() {
                    _expanded6 = !_expanded6;
                  });
                },
                BuildRow(
                  sections:5,
                  perPerson:double.parse(ograPersonsController.text),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/// Table Row
Widget tableRow(context, {required String txt1, required String txt2}) => Row(
      children: [
        const Expanded(
          flex: 1,
          child: SizedBox(
            width: 1,
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              AppLocalization.of(context)!.translate(txt1)!,
              style: black18regular(),
            ),
          ),
        ),
        const Expanded(
          flex: 2,
          child: SizedBox(
            width: 1,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            txt2,
            style: black18regular(),
          ),
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(
            width: 1,
          ),
        ),
      ],
    );

/// Classes
Widget classes(
  context,
  bool height,
  String txt,
  void Function() onTap,
  Widget widget,
) =>
    AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: height ? getHeight(context) / 2 : getHeight(context) / 10,
      child: Card(
        //color: const Color(0xff191919).withOpacity(.1),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          children: <Widget>[
            ListTile(
              title: (
                  Text(
                AppLocalization.of(context)!.translate(txt)!,
                style: prim16bold(),
              )),
              trailing: IconButton(
                  icon: height
                      ? const Icon(Icons.expand_less)
                      : const Icon(Icons.expand_more),
                  onPressed: onTap),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: height ? getHeight(context) / 2.5 : 0,
              width: MediaQuery.of(context).size.width,
              child: widget,
            )
          ],
        ),
      ),
    );


/// Calculate Ogra
String calculateOgra(
    {required double perPerson,
      required int numOfPassenger,
      required int index}) {
  if (perPerson>0) {
    return ((perPerson *index)).toString();
  }
  return "0" ;
}