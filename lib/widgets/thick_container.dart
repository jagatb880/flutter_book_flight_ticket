import 'package:flutter/material.dart';

class TickContainer extends StatelessWidget {
  final bool? isColor;
  const TickContainer({
    Key? key,
    required this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2.5,
            color: isColor == null ? Colors.white : Color(0xFF8ACCF7)),
      ),
    );
  }
}
