import 'package:flutter/material.dart';
import 'package:ogrty/modules/class200.dart';
import 'package:ogrty/shared/components/components.dart';
import 'package:ogrty/shared/styles/colors.dart';
import 'package:ogrty/shared/styles/styles.dart';
import '../shared/language/app_localization.dart';
import '../shared/styles/sizes.dart';
import 'class100.dart';
import 'class20.dart';
import 'class5.dart';
import 'class50.dart';
import 'class_10.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var formKey = GlobalKey<FormState>();

  var numController = TextEditingController();

  var controller = TextEditingController();

  bool _expanded1 = false;
  bool _expanded2 = false;
  bool _expanded3 = false;
  bool _expanded4 = false;
  bool _expanded5 = false;
  bool _expanded6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: SizedBox(
                      height: getHeight(context)/4,
                      child: defContainer(context,
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('djfkld${numController.text}'),
                                SizedBox(
                                  width: getWidth(context) / 3,
                                  child: formFeild(
                                      controller: numController,
                                      type: TextInputType.number,
                                      validate: (value) {
                                        if (value.isEmpty) {
                                          return AppLocalization.of(context)!.translate(
                                              'please_enter_value')!;
                                        }
                                        return null;
                                      },
                                      txt:  AppLocalization.of(context)!.translate('per_person')! ,
                                      focusedBorder: InputBorder.none,
                                      isClikable: true,
                                      disabledBorder: InputBorder.none,
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
                                      txt:
                                      AppLocalization.of(context)!.
                                      translate('number_of_passengers')! ,
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
                       'count')! , borderColor: primaryColor,color: primaryColor),
                            ),
                            Row(children: [
                              const SizedBox(width: 50,),
                              Text(AppLocalization.of(context)!.
                              translate('driver_fare')!,style: black16bold(),),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: SizedBox(
                                  width: getWidth(context)/3,
                                  child: defaultSeparator(
                                      separatorColor.withOpacity(.3)),
                                ),
                              ),
                              Text(AppLocalization.of(context)!.
                              translate('driver_fare')!,style:prim16bold(),),
                            ],),
                          ],
                        ),
                        color: defTextColor
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                child: Text(AppLocalization.of(context)!.translate('Let\'s_count_it')!,
                  style: black14bold(),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: SizedBox(
                    height: getHeight(context) / 2,
                    child: defContainer(
                      context,
                      SingleChildScrollView(
                        child: Column(
                          children: [
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
                            AppLocalization.of(context)!.translate('the_number')!,
                            style: prim14bold(),
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
                            AppLocalization.of(context)!.translate('fare')!,
                            style: prim14bold(),
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
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '1', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '2', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '3', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '4', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '5', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '6', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '7', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '8', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '9', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '10', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '11', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '12', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '13', txt2: 'the_number'),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: defaultSeparator(
                                  separatorColor.withOpacity(.5)),
                            ),
                            tableRow(context,
                                txt1: '14', txt2: 'the_number'),
                            sizedBoxh1,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                child: Text(AppLocalization.of(context)!.translate(
                    'rest_of_the_fare')!,
                  style: black14bold(),),
              ),
            classes(
              context,
                _expanded1,
                    'class_200',
                    (){setState(() {
            _expanded1 = !_expanded1;
            });},
              const ItemExpandedTile200(),
            ),
              classes(
                context,
                _expanded2,
                'class_100',
                    (){setState(() {
                  _expanded2 = !_expanded2;
                });},
                const ItemExpandedTile100(),
              ),
              classes(
                context,
                _expanded3,
                'class_50',
                    (){setState(() {
                  _expanded3 = !_expanded3;
                });},
                const ItemExpandedTile50(),
              ),
              classes(
                context,
                _expanded4,
                'class_20',
                    (){setState(() {
                  _expanded4 = !_expanded4;
                });},
                const ItemExpandedTile20(),
              ),
              classes(
                context,
                _expanded5,
                'class_10',
                    (){setState(() {
                  _expanded5 = !_expanded5;
                });},
                const ItemExpandedTile10(),
              ),
              classes(
                context,
                _expanded6,
                'class_5',
                    (){setState(() {
                  _expanded6 = !_expanded6;
                });},
                const ItemExpandedTile5(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
              style: black14bold(),
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
            AppLocalization.of(context)!.translate(txt2)!,
            style: black14bold(),
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

Widget classes(context,bool height,String txt,void Function() onTap,Widget widget,)=>AnimatedContainer(
  duration: const Duration(milliseconds: 300),
  height: height
      ? getHeight(context)/2
      : getHeight(context)/10,
  child: Card(
    elevation: 10,
    color: Theme.of(context).canvasColor,
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: <Widget>[
        ListTile(
          title: ( Text(
            AppLocalization.of(context)!.translate(
                txt)! ,
            style:  prim18bold(),
          )),
          trailing: IconButton(
              icon: height
                  ? const Icon(Icons.expand_less)
                  : const Icon(Icons.expand_more),
              onPressed: onTap),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: height
              ? getHeight(context)/2.5
          //300
              : 0,
          width: MediaQuery.of(context).size.width,
          child: widget,
        )
      ],
    ),
  ),
);