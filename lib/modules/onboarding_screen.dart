// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:ogrty/modules/home_screen.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// import '../shared/components/components.dart';
// import '../shared/language/app_localization.dart';
// import '../shared/network/local/cache_helper.dart';
// import '../shared/styles/colors.dart';
// import '../shared/styles/sizes.dart';
// import '../shared/styles/styles.dart';
//
//
// class BoardModel {
//   final String image;
//   final String title;
//   final String body;
//
//   BoardModel({required this.image, required this.title, required this.body});
// }
//
// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({Key? key}) : super(key: key);
//
//   @override
//   _OnBoardingScreenState createState() => _OnBoardingScreenState();
// }
//
// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   late List<BoardModel> list;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   var isLast = false;
//   final controller = PageController();
//
//   /// بعمل save لل ONBOARDING جوا ال cacheHelper
//   void submit() {
//     CacheHelper.saveData(key: 'onBoarding', value: true).
//     then((value) {
//       if(value!){
//         navigateAndFinish(context,  const HomeScreen(),);
//       }
//
//     });
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     list = [
//       BoardModel(
//         image: '',
//         title:'',
//         body: 'اسهل طريقة لحساب اجرتك  ',
//       ),
//       BoardModel(
//         image: '',
//         title: '',
//         body: '',
//       ),
//       BoardModel(
//         image: '',
//         title:'',
//         body: '',
//       ),
//
//     ];
//     return Directionality(
//       textDirection: TextDirection.ltr,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Expanded(
//               child: PageView.builder(
//                 physics:const BouncingScrollPhysics(),
//                 onPageChanged: (int index) {
//                   if (index == (list.length - 1) && !isLast) {
//                     setState(() => isLast = true);
//                   } else if (isLast) {
//                     setState(() => isLast = false);
//                   }
//                 },
//                 controller: controller,
//                 itemCount: list.length,
//                 itemBuilder: (context, i) => Stack(
//                   children: [
//                     Image(image: AssetImage('assets/images/8.jpg'),
//                       height: getHeight(context),width: getWidth(context),
//                       ),
//                     Container(color:Colors.black.withOpacity(.6)),
//                     SizedBox(
//                       child: Padding(
//                         padding: const EdgeInsets.all(20.0),
//                         child: Row(
//                           children: [
//                             Spacer(),
//                             TextButton( onPressed: submit,
//                               child:  Text(
//                                 AppLocalization.of(context)!.translate('skip')!,
//                                 style:const TextStyle(
//                                     color: secondColor,fontSize:20,
//                                     fontWeight: FontWeight.bold)
//                                 ,),
//                             ),
//                             const SizedBox(width:10),
//                             const Icon(Icons.arrow_forward_ios,
//                               size:15,
//                               color: secondColor,),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: <Widget>[
//                         const Spacer(),
//                         sizedBoxh1,
//                         Text(
//                           list[i].title,
//                           style: black18regular()
//                         ),
//                         sizedBoxh1,
//                         Text(
//                           list[i].body,
//                           style: white20bold(),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//                           child: SizedBox(
//                             width:double.infinity,
//                             child: defaultButton(context, function: () {
//                               if (isLast) {
//                                 submit();
//                               } else {
//                                 controller.nextPage(
//                                   duration: const Duration(milliseconds: 750),
//                                   curve: Curves.fastLinearToSlowEaseIn,
//                                 );
//                               }
//                             },
//                                 text: 'ابدا', borderColor: primaryColor),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

