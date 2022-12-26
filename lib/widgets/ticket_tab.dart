// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:flutter_book_flight_ticket/utils/app_layout.dart';

class TicketTab extends StatelessWidget {
  final String leftTab;
  final String rightTab;
  const TicketTab({
    Key? key,
    required this.leftTab,
    required this.rightTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
              child: Center(
                child: Text(leftTab),
              ),
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getWidth(50))),
                  color: Colors.white),
            ),
            Container(
              child: Center(
                child: Text(rightTab),
              ),
              width: size.width * .44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getWidth(50))),
                  color: Colors.transparent),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getWidth(50),
          ),
          color: Color(0xFFF4F6FD),
        ),
      ),
    );
  }
}
