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

///Divider
Widget myDivider(context) {
  return Divider(
    color: secondColor.withOpacity(0.15),
    thickness: 1,
  );
}

Widget defContainer(context, widget,{Color? color})=> Padding(
  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
  child: Container(
    height:getHeight(context)/5,
    width: getWidth(context),
    decoration: BoxDecoration(
      color:const Color(0xff191919).withOpacity(.1),
      borderRadius: BorderRadius.circular(10),
      boxShadow:  [
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(5),
        onPressed: function,
        child: Text(
          text,
          style: (TextStyle(
              color: txtColor, fontSize: 16)),
        ),
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
  required String label,
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
            borderSide:  BorderSide(
              color:secondColor.withOpacity(.8),
            ),
              ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide:  BorderSide(
              color:secondColor.withOpacity(.8),
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
          fillColor: secondColor.withOpacity(.3),
          label:Text(label,style: TextStyle(
              color: whiteColor,
              fontSize: 18),),

        ),
      ),
    );
