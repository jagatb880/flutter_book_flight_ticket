import 'package:flutter/material.dart';

import 'package:flutter_book_flight_ticket/utils/styles.dart';

class DoubleText extends StatelessWidget {
  final String leftText;
  final String rightText;
  const DoubleText({
    Key? key,
    required this.leftText,
    required this.rightText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () => print("You tapped the view all"),
          child: Text(
            rightText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
