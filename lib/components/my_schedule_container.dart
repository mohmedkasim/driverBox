import 'package:flutter/material.dart';

import '../constents.dart';

class MyScheduleContainer extends StatelessWidget {
  const MyScheduleContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: cSecondaryColor,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'جدولي',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset('assets/images/calendar.png',
                    width: MediaQuery.of(context).size.width / 4))
          ],
        ));
  }
}
