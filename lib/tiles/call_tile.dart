import 'package:flutter/material.dart';
import 'package:whatsapp/data/catalog.dart';

class CallTile extends StatelessWidget {
  final Item item;

  const CallTile({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        maxRadius: 25.0,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(item.image),
      ),
      title: Text(
        item.name,
        // maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(right: 220.0),
        child: Icon(Icons.call_received, color: Colors.greenAccent, size: 15),
      ),
      trailing: Icon(
        Icons.call,
        color: Colors.teal[900],
      ),
    );
  }
}
