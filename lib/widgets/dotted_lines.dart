// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DottedLines extends StatelessWidget {
  const DottedLines({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
              (constraint.constrainWidth() / 6).floor(),
              (index) => SizedBox(
                width: 3,
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
