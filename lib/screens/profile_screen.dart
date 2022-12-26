// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_book_flight_ticket/utils/app_layout.dart';
import 'package:flutter_book_flight_ticket/utils/styles.dart';
import 'package:flutter_book_flight_ticket/widgets/column_layout.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/img_1.png"))),
                ),
                Gap(AppLayout.getHeight(10)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book Ticket",
                      style: Styles.headLineStyle1,
                    ),
                    Text(
                      "New-York",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500),
                    ),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFEF4F3),
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(100),
                        ),
                      ),
                      padding: EdgeInsets.all(AppLayout.getHeight(3)),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF526799),
                            ),
                            child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Premium status",
                            style: TextStyle(
                                color: Color(0xFF526799),
                                fontWeight: FontWeight.w600),
                          ),
                          Gap(AppLayout.getHeight(5)),
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    "Edit",
                    style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Divider(
              color: Colors.grey.shade300,
            ),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Styles.primaryColor,
                      borderRadius: BorderRadius.circular(18)),
                ),
                Positioned(
                  right: -40,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 18, color: Color(0xFF264CD2)),
                        color: Colors.transparent),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(25),
                      vertical: AppLayout.getHeight(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_circle_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        ),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You\'v got a new award",
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "You have 95 flights in a year",
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(25)),
            Text(
              "Accumulated miles",
              style: Styles.headLineStyle2,
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(18),
                  ),
                  color: Styles.bgColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(15)),
                  Text(
                    "192802",
                    style: TextStyle(
                        fontSize: 40,
                        color: Styles.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Miles accrued",
                          style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                      Text("11 June 2022",
                          style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "23 042",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                          firstText: "Airline CO",
                          secondText: "Received from",
                          alignment: CrossAxisAlignment.end,
                          isColor: true),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "24",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                          firstText: "McDonal's",
                          secondText: "Received from",
                          alignment: CrossAxisAlignment.end,
                          isColor: true),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "52 340",
                        secondText: "Miles",
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                          firstText: "Exuma",
                          secondText: "Received from",
                          alignment: CrossAxisAlignment.end,
                          isColor: true),
                    ],
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Center(
              child: Text(
                "How to get more miles",
                style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
