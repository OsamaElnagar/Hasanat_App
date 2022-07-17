import 'package:flutter/material.dart';
import 'package:hasanat/shared/constants/constants.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

Future navigate2(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false,
    );

void pint(String text) {
  debugPrint(text);
}

void dialogMessage({
  required BuildContext context,
  required Widget title,
  required Widget content,
  required List<Widget> actions,
}) {
  showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            title: title,
            content: content,
            actions: actions,
          ));
}

Widget gradientBlueButton({
  required BuildContext context,
  Function()? onPressed,
  required Widget title,
}) {
  return Container(
    clipBehavior: Clip.antiAlias,
    width: MediaQuery.of(context).size.width,
    height: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        gradient: LinearGradient(
          colors: [
            indigo,
            Colors.blue[400]!,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        )),
    child: MaterialButton(
      onPressed: onPressed,
      child: title,
    ),
  );
}

Widget myTextFormField({
  required TextEditingController controller,
  required Widget suffixIcon,
  required Widget prefixIcon,
  required OutlineInputBorder enabledBorder,
  required OutlineInputBorder focusedBorder,
  required Color fillColor,
  required Color cursorColor,
  required String hintText,
  required String labelText,
  required TextStyle hintStyle,
  required TextStyle labelStyle,
  required TextStyle style,
  required bool filled,
  required int maxLines,
  required TextInputType keyboardType,
  String? Function(String?)? validator,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      enabledBorder: enabledBorder,
      focusedBorder: focusedBorder,
      fillColor: fillColor,
      hintText: hintText,
      hintStyle: hintStyle,
      labelText: labelText,
      labelStyle: labelStyle,
      filled: filled,
    ),
    style: style,
    // textInputAction: textInputAction,
    validator: validator,
    cursorColor: cursorColor,
    maxLines: maxLines,
    keyboardType: keyboardType,
  );
}
