import 'package:flutter/material.dart';

import '../constents.dart';

class TotalDeliveredContainer extends StatelessWidget {
  const TotalDeliveredContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: cPrimaryColor,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Delivered',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 10,
                left: 10,
                child: Image.asset('assets/images/car.png',
                    width: MediaQuery.of(context).size.width / 3))
          ],
        ));
  }
}
