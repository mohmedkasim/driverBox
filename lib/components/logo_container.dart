import 'package:flutter/material.dart';
import 'package:trock_driver/constents.dart';

class LogoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        children: [
          Row(
            children: [
              Text(
                'Driver',
                style: TextStyle(
                    fontFamily: "pacifico", fontSize: 20, color: cPrimaryColor),
              ),
              Text(
                'to.',
                style: TextStyle(
                  fontFamily: "pacifico",
                  fontSize: 20,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
