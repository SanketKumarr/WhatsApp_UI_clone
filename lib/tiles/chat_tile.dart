import 'package:flutter/material.dart';
import 'package:whatsapp/data/catalog.dart';
import 'package:whatsapp/screen/chat_screen.dart';

class ChatTiles extends StatelessWidget {
  final Item item;

  const ChatTiles({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ChatScreen(item: item)));
      },
      // leading: Image.network(item.image, ),
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
      subtitle: Text(
        item.message,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      // trailing: //TODO:Learn: Show real time and date,
    );
  }
}
