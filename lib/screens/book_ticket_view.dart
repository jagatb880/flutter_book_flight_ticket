// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_book_flight_ticket/widgets/column_layout.dart';
import 'package:gap/gap.dart';

import 'package:flutter_book_flight_ticket/utils/app_layout.dart';
import 'package:flutter_book_flight_ticket/utils/styles.dart';
import 'package:flutter_book_flight_ticket/widgets/dotted_lines.dart';
import 'package:flutter_book_flight_ticket/widgets/thick_container.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({
    Key? key,
    required this.ticket,
    this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.90,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 167 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
        child: Column(
          children: [
            // Showing blue part of card
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(12)),
                  topRight: Radius.circular(AppLayout.getHeight(12)),
                ),
                color: isColor == null ? Color(0xFF526799) : Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${ticket['from']['code']}",
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                      Expanded(child: Container()),
                      TickContainer(
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                                height: AppLayout.getHeight(24),
                                child: DottedLines(
                                  isColor: isColor,
                                )),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : Color(0xFF8ACCF7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TickContainer(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      Text(
                        "${ticket['to']['code']}",
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3
                                .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text("${ticket['from']['name']}",
                            style: isColor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4
                                    .copyWith(color: Colors.grey)),
                      ),
                      Text("${ticket['flying_time']}",
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4
                                  .copyWith(color: Colors.grey)),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          "${ticket['to']['name']}",
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4
                                  .copyWith(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Showing dotted orage part of card
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(AppLayout.getHeight(12)),
                            bottomRight:
                                Radius.circular(AppLayout.getHeight(12)),
                          ),
                          color: Colors.white),
                    ),
                  ),
                  Expanded(child: DottedLines(isColor: isColor)),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(12)),
                            bottomLeft:
                                Radius.circular(AppLayout.getHeight(12)),
                          ),
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            // Showing orage part of card
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 12 : 0),
                    bottomRight: Radius.circular(isColor == null ? 12 : 0)),
                color: isColor == null ? Styles.orangeColor : Colors.white,
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppColumnLayout(
                      firstText: "${ticket['date']}",
                      secondText: "Date",
                      alignment: CrossAxisAlignment.start,
                      isColor: isColor),
                  AppColumnLayout(
                      firstText: "${ticket['departure_time']}",
                      secondText: "Departure Time",
                      alignment: CrossAxisAlignment.center,
                      isColor: isColor),
                  AppColumnLayout(
                      firstText: "${ticket['number']}",
                      secondText: "Number",
                      alignment: CrossAxisAlignment.end,
                      isColor: isColor)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
