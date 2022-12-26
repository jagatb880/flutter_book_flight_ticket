// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_book_flight_ticket/screens/book_ticket_view.dart';
import 'package:flutter_book_flight_ticket/utils/app_info_layout.dart';
import 'package:flutter_book_flight_ticket/utils/app_layout.dart';
import 'package:flutter_book_flight_ticket/utils/styles.dart';
import 'package:flutter_book_flight_ticket/widgets/ticket_tab.dart';
import 'package:gap/gap.dart';

import '../widgets/column_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(
                  AppLayout.getHeight(10),
                ),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1
                      .copyWith(fontSize: AppLayout.getWidth(35)),
                ),
                Gap(
                  AppLayout.getHeight(20),
                ),
                TicketTab(
                  leftTab: 'Upcoming',
                  rightTab: 'Previous',
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(10)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 16, 15),
                  padding: EdgeInsets.all(AppLayout.getHeight(15)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(AppLayout.getHeight(15)),
                        bottomRight: Radius.circular(AppLayout.getHeight(15)),
                      )),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.start,
                            firstText: 'FlutterDb',
                            secondText: 'Passenger',
                            isColor: true,
                          ),
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: '5221 478566',
                            secondText: 'Passport',
                            isColor: true,
                          )
                        ],
                      ),
                      Gap(AppLayout.getHeight(40)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.start,
                            firstText: '0055 444 77147',
                            secondText: 'Number of E-ticket',
                            isColor: true,
                          ),
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: 'B2SG28',
                            secondText: 'Booking code',
                            isColor: true,
                          )
                        ],
                      ),
                      Gap(AppLayout.getHeight(40)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    scale: 12,
                                  ),
                                  Text(
                                    " *** 2462",
                                    style: Styles.headLineStyle3,
                                  )
                                ],
                              ),
                              Gap(AppLayout.getHeight(5)),
                              Text(
                                "Payment Method",
                                style: Styles.headLineStyle4,
                              )
                            ],
                          ),
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: '\$249.99',
                            secondText: 'Price',
                            isColor: true,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ClipRRect(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(15)),
                        child: BarcodeWidget(
                          barcode: Barcode.code128(),
                          data: 'https://github.com/jagatb880',
                          drawText: false,
                          color: Styles.textColor,
                          width: double.infinity,
                          height: 70,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(10)),
                  child: TicketView(
                    ticket: ticketList[0],
                  ),
                ),
              ],
            ),
            Positioned(
              left: AppLayout.getHeight(18),
              top: AppLayout.getHeight(225),
              child: Container(
                padding: EdgeInsets.all(3),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
              ),
            ),
            Positioned(
              left: AppLayout.getWidth(350),
              top: AppLayout.getHeight(225),
              child: Container(
                padding: EdgeInsets.all(3),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
