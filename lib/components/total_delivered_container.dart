import 'package:flutter/material.dart';

import '../constents.dart';

class TotalDeliveredContainer extends StatelessWidget {
  const TotalDeliveredContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110,
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
                    'مجموع الموصل',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'اليوم',
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
