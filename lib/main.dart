import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ogrty/shared/app_cubit/app_cubit.dart';
import 'package:ogrty/shared/language/app_localization.dart';
import 'package:ogrty/shared/network/local/cache_helper.dart';
import 'package:ogrty/shared/styles/colors.dart';
import 'modules/home_screen.dart';
import 'modules/onboarding_screen.dart';
import 'my_bloc_observer.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  ///uid = CacheHelper.getDate(key: 'uid');

  //DioHelper.init();
  await CacheHelper.init();
  BlocOverrides.runZoned(
        () {
      AppCubit();},
    blocObserver: MyBlocObserver(),
  );
  bool? onBoarding=CacheHelper.getData(key:'onBoarding');
  String? token=CacheHelper.getData(key:'token');
  Widget widget;

  if(onBoarding !=null ){
    if(token !=null) {
      widget= HomeScreen();
    } else{widget=  HomeScreen();}
  }else{widget=const OnBoardingScreen();}


  runApp(  MyApp(startWidget: widget,));
}

class MyApp extends StatelessWidget {
  final Widget startWidget;

  const MyApp({required this.startWidget});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AppCubit(),
        )
      ],
      child: BlocConsumer<AppCubit,AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              //primarySwatch:  Color(0xffF48A36),
              primaryColor: primaryColor,
              scaffoldBackgroundColor: Colors.white,
            ),

            /// LOCALIZATION
            supportedLocales: const [
              Locale('en'),
              Locale("ar"),
            ],
            localizationsDelegates: [
              AppLocalization.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            localeResolutionCallback: (locale, supportedLocales) {
              for (var supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode == locale?.languageCode &&
                    supportedLocale.countryCode == locale?.countryCode) {
                  return supportedLocale;
                }
              }
              return supportedLocales.first;
            },

            home: startWidget,
          );
        },
      ),
    );
    //     },
    //   ),
    // );
  }
}

