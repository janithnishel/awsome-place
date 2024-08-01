import 'package:app4/const/colors.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String title;
  final double buttonWidth;
  final double buttonHeight;
  final double buttonFontSize;
  final Color buttonColor;

  const CustomButtom({super.key, required this.title, required this.buttonWidth, required this.buttonHeight, required this.buttonColor, required this.buttonFontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: buttonWidth,               //120,
          height:buttonHeight ,                    //40,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                     MaterialStatePropertyAll(buttonColor), //  tthirdCardColor
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: const BorderSide(color: tmainBlack)))),
            child: Center(
              child: Text(
                title,
                style:  TextStyle(
                    fontSize: buttonFontSize,
                    fontWeight: FontWeight.w600,
                    color: tbuttonTextColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
