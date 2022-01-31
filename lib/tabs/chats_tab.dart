import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp/data/catalog.dart';
import 'package:whatsapp/tiles/chat_tile.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var dataJson = await rootBundle.loadString("assets/files/data.json");
    // Decoded data:
    var decodedData = jsonDecode(dataJson);
    var productsData = decodedData["individual"];
    Data.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration( //--> To remove scroll glow
        behavior: MyBehaviour(),
        child: ListView.separated(
          itemCount: Data.items.length,
          itemBuilder: (context, index) {
            return ChatTiles(
              item: Data.items[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) => Divider(
            indent: 80,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.greenAccent[700],
        child: Icon(Icons.message),
      ),
    );
  }
}

class MyBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
