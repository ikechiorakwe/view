import 'package:flutter/material.dart';

class CurvedBadge extends StatelessWidget {
  const CurvedBadge({
    Key? key,
    this.containerColor = Colors.white,
    this.iconColor = Colors.white,
    this.textColor = Colors.white,
    }) : super(key: key);
  final Color containerColor;
  final Color iconColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.96,
      height: 16.69,
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: iconColor ,
          ),
          const SizedBox(
            width: 0.5,
          ),
          Text(
            '45',
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }
}
