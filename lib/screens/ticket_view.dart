// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_book_flight_ticket/utils/app_layout.dart';
import 'package:flutter_book_flight_ticket/utils/styles.dart';
import 'package:flutter_book_flight_ticket/widgets/dotted_lines.dart';
import 'package:flutter_book_flight_ticket/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.90,
      height: AppLayout.getHeight(200),
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
                color: Color(0xFF526799),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${ticket['from']['code']}",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      TickContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                                height: AppLayout.getHeight(24),
                                child: DottedLines()),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "${ticket['to']['code']}",
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
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
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white)),
                      ),
                      Text("${ticket['flying_time']}",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white)),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          "${ticket['to']['name']}",
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Showing dotted orage part of card
            Container(
              color: Styles.orangeColor,
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
                  Expanded(child: DottedLines()),
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
                  bottomLeft: Radius.circular(AppLayout.getHeight(12)),
                  bottomRight: Radius.circular(AppLayout.getHeight(12)),
                ),
                color: Styles.orangeColor,
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text("${ticket['date']}",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white)),
                      ),
                      Text("${ticket['departure_time']}",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white)),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          "${ticket['number']}",
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text("Date",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white)),
                      ),
                      Text("Departure Time",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white)),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          "Number",
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
