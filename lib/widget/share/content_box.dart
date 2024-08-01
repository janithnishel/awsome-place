import 'package:app4/const/colors.dart';
import 'package:flutter/material.dart';

Widget contentBox({String? hinttext, bool? isShadow}) {
  return TextFormField(
    decoration: InputDecoration(
      hintText: hinttext,
      hintStyle: TextStyle(color: const Color(0xff6E7A76).withOpacity(0.47)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: const BorderSide(
          color: tmainBlack,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: const BorderSide(
          color: tmainBlack,
        ),
      ),
    ),
  );
}
