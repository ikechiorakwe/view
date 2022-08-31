// ignore_for_file: unnecessary_const

import 'package:apptide/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    this.iconSrc,
    this.text,
    }) : super(key: key);

    final String? iconSrc;
    final Widget? text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 98.0,
      height: 136.0,                
      child: Card(
        elevation: 5.0,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ), 
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20.0, left: 26.0, right:26.0),
              child: SvgPicture.asset(
                iconSrc!,
              ),
            ),
            const SizedBox(
              height: 2.0
            ),
            text!
          ],
        ),
      ),
    );
  }
}

class Card2Widget extends StatelessWidget {
  const Card2Widget({
    Key? key,
    this.iconSrc,
    this.text,
    }) : super(key: key);

    final String? iconSrc;
    final Widget? text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 99.22,
      height: 70.24,                
      child: Card(
        elevation: 5.0,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:11.22, left: 12.0),
              child: SvgPicture.asset(
                iconSrc!,
              ),
            ),
            const SizedBox(
              height: 15.0
            ),
            text!
          ],
        ),
      ),
    );
  }
}


class Card3Widget extends StatelessWidget {
  const Card3Widget({
    Key? key,
    this.iconSrc,
    this.firstText,
    this.secondText,
    this.color = Colors.white
    }) : super(key: key);

    final String? iconSrc;
    final Widget? firstText;
    final Widget? secondText;
    final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110.0,
      height: 100.61,                
      child: Card(
        color: color,
        elevation: 5.0,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(
              height: 11.5,
            ),
            
            Row(
              children: [
                Padding(
                  padding:  const EdgeInsets.only(left: 7.15 ),
                  child: Container(
                    width: 33.85,
                    height: 33.85,
                    decoration: BoxDecoration(
                      color: const Color(0xffD8D8D8),
                      borderRadius: BorderRadius.circular(10.0) ,
                    ) ,
                    
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 10.0,
                          width: 20.0,
                          child: SvgPicture.asset("assets/images/head.svg", color: Colors.blue,)),
                        SizedBox(
                          height: 10.0,
                          width: 20.0,
                          child: Padding(
                            padding: const EdgeInsets.only(right:1.5),
                            child: SvgPicture.asset("assets/images/heart 1.svg"),
                          )),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 10.0,
                          width: 20.0,
                          child: SvgPicture.asset("assets/images/Ellipse 303.svg")),
                        const Padding(
                          padding: EdgeInsets.only(right:0.5),
                          child: TextWidget(              
                            topPadding: 7.15,
                            text:'Online',
                            fontSize: 6.0, 
                            color: Color(0xff0C0B52),
                            fontWeight: FontWeight.w500,           
                          ),
                        ),        
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            firstText!,
            
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: SizedBox(
                height: 10.0,
                width: 20.0,
                child: SvgPicture.asset("assets/images/checkbox.svg")),
            ),
            const SizedBox(
              height: 10.0,
            ),
            secondText!
            
          ],
        ),
      ),
    );
  }

  
}