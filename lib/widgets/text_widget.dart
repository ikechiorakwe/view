import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
    {
      Key? key,
      this.topPadding = 0.0,
      this.leftPadding = 0.0,
      this.rightPadding = 0.0,
      this.bottomPadding = 0.0,
      this.text = "",
      this.color = Colors.white,
      this.fontSize = 0.0,
      this.textHeight = 0.0,
      this.fontWeight = FontWeight.normal,
    }
    ) : super(key: key);

    final double topPadding;
    final double leftPadding;
    final double rightPadding;
    final double bottomPadding;
    final String text;
    final Color color;
    final double fontSize;
    final double textHeight;
    final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:topPadding, left:leftPadding, right: rightPadding, bottom: bottomPadding ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          color: color,
          fontSize: fontSize,
          fontStyle: FontStyle.normal,
          height: textHeight,
          fontWeight: fontWeight,
        ),
        // TextStyle(
          // color: color,
          // fontSize: fontSize,
          // fontStyle: FontStyle.normal,
          // height: textHeight,
          // fontWeight: fontWeight,
        // )
      ),
    );
  }
}