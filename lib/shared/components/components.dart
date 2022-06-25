import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../styles/sizes.dart';
import '../styles/styles.dart';

/// Separator divider
Widget defaultSeparator(Color? color) => Container(
  width: double.infinity,
  height: 1.0,
  color: color,
);

Widget defContainer(context, widget,{Color? color})=> Padding(
  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
  child: Container(
    height:getHeight(context)/5,
    width: getWidth(context),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(
          color: defTextColor,
          // spreadRadius: 5,
          // blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
      child: widget,
    ),
  ),
);


///Divider
Widget myDivider(context) {
  return Divider(
    color: secondColor.withOpacity(0.15),
    thickness: 1,
  );
}

/// CircularProgressIndicator
Widget buildCircularProgressIndicator() => const Center(
  child: CircularProgressIndicator(),
);

///Button
Widget defaultButton(BuildContext context, {
  required Function()? function,
  required String text,
  Widget? child,
  Color? color,
   required Color borderColor,
  Color? txtColor,
}) =>
    Container(
      height: getHeight(context)/16,
      width: getWidth(context)/3,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: borderColor),
        //  color: buttonColor,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      child: MaterialButton(
        child: Text(
          text,
          style: (TextStyle(
              color: txtColor, fontWeight: FontWeight.bold, fontSize: 14)),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(5),
        onPressed: function,
      ),
    );


///Navigate.push
void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

///Navigate And Remove
void navigateAndFinish(context, widget) =>
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ),
        // return false,
        (route) {
      return false;
    });

/// TEXT FORM FEILD
Widget formFeild({
  required String txt,
  required bool isClikable,
  dynamic validate,
  Function(String)? onSubmit,
  Function(String)? onChanged,
  Function()? onTap,
  TextEditingController? controller,
  TextInputType? type,
  InputBorder? focusedBorder,
  InputBorder? disabledBorder,
}) =>
    MaterialButton(
      onPressed: onTap,
      child: TextFormField(
        autofocus: true,
        style: black14bold(),
        enabled: isClikable,
        onChanged: onChanged,
        controller: controller,
        validator: validate,onFieldSubmitted: onSubmit,
        keyboardType: type,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: primaryColor,
            ),
              ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: primaryColor,
              width: 1.3,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: txt,
          hintStyle: TextStyle(color: textGray,fontSize: 14,fontWeight: FontWeight.normal),
          labelStyle: black14bold(),
          filled: true,
          fillColor: Colors.grey.withOpacity(.07),
        ),
      ),
    );


/// Cart Button with text
Widget cartButton({
  required Function()? function,
   String? text,
  Color? color,
  Color? txtColor,
  required Widget widget,
   required double rightPadding,
   required double fontSize,
   required double iconSize,
}) =>
    Padding(
      padding:  EdgeInsets.only(right:rightPadding ),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: primaryColor),
          //  color: buttonColor,
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        child: MaterialButton(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Icon(Icons.shopping_cart,
                    color: defTextColor,size: iconSize,),
                  widget,
                  Text(
                    text!,
                    style: (TextStyle(
                        color: txtColor, fontWeight: FontWeight.bold,
                        fontSize: fontSize)),
                  ),
                ],
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.all(5),
          onPressed: function,
        ),
      ),
    );

///Bottom Navigation Bar
BottomNavigationBarItem buildBottomNavigationBarItem({required String icon,required String activeIcon,required String text,}) {
  return BottomNavigationBarItem(
    icon: Image.asset('assets/icons/$icon.png'),
    activeIcon: Image.asset('assets/icons/$activeIcon.png'),
    label: text,
  );
}

