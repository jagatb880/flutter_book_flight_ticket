// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(
            AppLayout.getHeight(30),
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
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(10, 0, 16, 15),
            padding: EdgeInsets.all(AppLayout.getHeight(15)),
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
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: 'VISA *** 2462',
                      secondText: 'Payment Mode',
                      isColor: true,
                    ),
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.end,
                      firstText: '\$249.99',
                      secondText: 'Price',
                      isColor: true,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
