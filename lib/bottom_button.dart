import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonTitle, required this.onPressed});
  final String buttonTitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: kHeightBottomContainer,
        color: kBottomContainerColor,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
                fontSize: 29, fontWeight: FontWeight.bold, letterSpacing: 0.6),
          ),
        ),

        // margin: EdgeInsets.only(top: 8),
      ),
    );
  }
}
