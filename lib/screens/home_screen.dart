import 'package:flutter/material.dart';
import 'package:trock_driver/components/logo_container.dart';
import 'package:trock_driver/components/user_account_container.dart';
import 'package:trock_driver/screens/loading_items_screen.dart';
import 'package:trock_driver/screens/order_request_screen.dart';

import '../components/list_view_item.dart';
import '../components/my_schedule_container.dart';
import '../components/total_delivered_container.dart';
import '../constents.dart';

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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Column(
                      children: [
                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LogoContainer(),
                              UserContainer(),
                            ],
                          ),
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
                              hintText: "بحث عن متاجر...",
                              fillColor: Colors.white70),
                        ),
                        SizedBox(height: 30),
                        TotalDeliveredContainer(),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Text(
                              'جدول ',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'اليوم',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: cPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    )),
                Container(
                  height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: false,
                    itemCount: 4,
                    separatorBuilder: (context, int index) {
                      return SizedBox(
                        width: 5,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return ListViewItem(
                        value1: "PM 12:00",
                        value2: "Samsung",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoadingItemsScreen()));
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: MyScheduleContainer(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 30,
                    left: 30,
                    top: 15,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'طلبات ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'توصيل',
                        style: TextStyle(
                            fontSize: 20,
                            color: cPrimaryColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: false,
                    itemCount: 4,
                    separatorBuilder: (context, int index) {
                      return SizedBox(
                        width: 5,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return ListViewItem(
                          value1: "2021-02-12",
                          value2: "9:00 PM",
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        OrderRequestScreen()));
                          });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
