import 'package:flutter/material.dart';

import '../constents.dart';

class ListViewItem extends StatelessWidget {
  final value1;
  final value2;
  final Function onPressed;
  const ListViewItem({Key key, this.value1, this.value2, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: cCardColor),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  value1,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(height: 5),
                Text(
                  value2,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
