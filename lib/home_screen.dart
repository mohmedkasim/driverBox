import 'package:flutter/material.dart';
import 'package:trock_driver/components/logo_container.dart';
import 'package:trock_driver/components/user_account_container.dart';
import 'package:trock_driver/constents.dart';

import 'components/total_delivered_container.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [LogoContainer(), UserContainer()],
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[600]),
                      hintText: "Search for markets ...",
                      fillColor: Colors.white70),
                ),
                SizedBox(height: 30),
                TotalDeliveredContainer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
