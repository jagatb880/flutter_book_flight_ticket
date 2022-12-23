// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_book_flight_ticket/utils/app_layout.dart';
import 'package:flutter_book_flight_ticket/utils/styles.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(10)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(10))),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFfBFC2DF),
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
