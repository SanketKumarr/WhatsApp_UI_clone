import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp/data/catalog.dart';
import 'package:whatsapp/tiles/call_tile.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
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
    return ListView.builder(
        itemCount: Data.items.length,
        itemBuilder: (context, index) {
          return CallTile(
            item: Data.items[index],
          );
        });
  }
}
