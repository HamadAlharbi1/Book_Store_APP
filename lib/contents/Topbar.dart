import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    required this.Mycolor,
  }) : super(key: key);

  final Color Mycolor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.safety_check,
          color: Mycolor,
        ),
        Text(
          'How to Break Away from Overworking, Overdoing, and Underliving ',
          style: TextStyle(
            color: Mycolor,
          ),
        ),
        Icon(
          Icons.safety_check,
          color: Mycolor,
        ),
        Icon(
          Icons.arrow_drop_down,
          color: Mycolor,
        ),
      ],
    );
  }
}
