
import 'package:flutter/material.dart';

Widget defaultButton(
    {required function,
    required String text,
    double width = double.infinity,
    Color backgroundColor = Colors.blue,
    double radius = 3.0}) {
  return Container(
    width: width,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(radius),
    ),
    alignment: Alignment.center,
    padding: const EdgeInsets.all(15),
    child: InkWell(
      onTap: function,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType inputType,
  required String label,
  required IconData icon,
  String? hint,
  Function? onSubmit,
  Function? onchange,
  Function? onTap,
  Widget? suffix,
}) {
  return TextField(
    style: TextStyle(),
    decoration: InputDecoration(
      suffix: suffix,
      border: const OutlineInputBorder(),
      prefixIcon: Icon(icon),
      hintText: hint,
      label: Text(label),
    ),
    controller: controller,
    keyboardType: inputType,
  );
}

Widget defaultTextButton({
  required TextEditingController controller,
  required function,
  required String text,
}) {
  return TextButton(
    onPressed: function,
    child: Text(text.toUpperCase()),
  );
}
