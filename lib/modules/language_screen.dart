import 'package:flutter/material.dart';
import 'package:ogrty/shared/styles/styles.dart';
import '../shared/language/app_localization.dart';
import '../shared/styles/colors.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

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
      body: Column(
        children: [

        ],
      ),
    );
  }
}
