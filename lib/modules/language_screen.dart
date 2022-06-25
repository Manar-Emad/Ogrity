import 'package:flutter/material.dart';
import 'package:ogrty/shared/styles/sizes.dart';
import 'package:ogrty/shared/styles/styles.dart';
import '../shared/language/app_localization.dart';
import '../shared/styles/colors.dart';

class LanguageScreen extends StatefulWidget {
   const LanguageScreen({Key? key}) : super(key: key);
  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool isSelect=false;
   int? selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: Text(AppLocalization.of(context)!.translate('change_language')!,
          style: white18regular(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              GestureDetector(
                onTap: (){setState((){
                    selected = 0;
                });},
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Text(AppLocalization.of(context)!.translate('arabic')!,style: black18regular(),),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.check_circle_outline,size: 24,
                        color: (selected != null && selected == 0)
                            ? primaryColor
                            : textGray,

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            sizedBoxh1,
            GestureDetector(
              onTap: (){
                setState((){
                selected =1;
              });},
              child: Row(
                children: [
                  Text(AppLocalization.of(context)!.translate('english')!,style: black18regular(),),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(Icons.check_circle_outline,size: 24,
                      color:(selected != null && selected == 1)
                          ? primaryColor
                          : textGray,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
