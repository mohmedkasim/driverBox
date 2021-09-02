import 'package:flutter/material.dart';
import 'package:trock_driver/components/addNewItem.dart';
import 'package:trock_driver/components/list_view_item.dart';
import 'package:trock_driver/constents.dart';

class LoadingItemsScreen extends StatefulWidget {
  @override
  _LoadingItemsScreenState createState() => _LoadingItemsScreenState();
}

class _LoadingItemsScreenState extends State<LoadingItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cPrimaryColor,
        title: Text('Samsung'),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orange[100]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('تلفاز 12 بوصة'),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text('2'),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: cCardColor,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddNewItem(),
              isScrollControlled: true);
        },
      ),
    );
  }
}
