import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/data/catalog.dart';


class ChatScreen extends StatelessWidget {
  final Item item;
  const ChatScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      // appBar: ChatScreenAppbar(item: item), // ERROR:
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        leading: Row(
          // Wrapped in Row because CircleAvatar size can't be alter in app bar
          children: [
            SizedBox(
              width: 16,
            ),
            Container(
              // To set the size of CircleAvatar
              width: 40,
              height: 40,
              child: CircleAvatar(
                backgroundImage: NetworkImage(item.image),
                // maxRadius: 1,
                // minRadius: 3,
              ),
            ),
          ],
        ),
        title: InkWell(
          onTap: () {
            print("Work in progress");
            SnackBar(content: Text("Work in progress"));
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => FriendProfile(item: item,)));
          },
          child: Text(
            item.name,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(child: Text("View contact")),
                    PopupMenuItem(child: Text("Media, links, and docs")),
                    PopupMenuItem(child: Text("Search")),
                    PopupMenuItem(child: Text("Mute notifications")),
                    PopupMenuItem(child: Text("Wallpaper")),
                    PopupMenuItem(child: Text("More")),
                  ]),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
            children: [
          ListView(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              // ---> card + icon btn
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 58,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80)),
                    child: TextFormField(
                      cursorColor: Colors.teal[900],
                      maxLines: 5,
                      minLines: 1,
                      keyboardType: TextInputType.multiline,
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                      ),
                      decoration: InputDecoration(
                        hintText: "Type a message",
                        border: InputBorder.none,
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.attach_file,
                                color: Colors.grey,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.teal[900],
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_voice,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
