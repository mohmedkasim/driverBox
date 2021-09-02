import 'package:flutter/material.dart';
import 'package:trock_driver/constents.dart';

class AddNewItem extends StatefulWidget {
  @override
  _AddNewItemState createState() => _AddNewItemState();
}

class _AddNewItemState extends State<AddNewItem> {
  String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      height: MediaQuery.of(context).size.height / 2,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'إضافة صنف',
                textAlign: TextAlign.center,
                style: TextStyle(color: cPrimaryColor, fontSize: 30),
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (newValue) {
                  value = newValue;
                },
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.qr_code_scanner_outlined,
                        color: cSecondaryColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    hintText: "اسم الصنف...",
                    fillColor: Colors.white70),
              ),
              SizedBox(height: 10),
              FlatButton(
                color: cCardColor,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'إضافة',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
