import 'package:flutter/material.dart';
import 'package:whatsapp/tabs/calls_tab.dart';
import 'package:whatsapp/tabs/camera_tab.dart';
import 'package:whatsapp/tabs/chats_tab.dart';
import 'package:whatsapp/tabs/status_tab.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex:
          1, //--> Don't decide this by the reference of length (above)
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: 'Helvetica',
              // fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ),
              iconSize: 25.0,
              padding: EdgeInsets.only(left: 20),
            ),
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text(
                          "New group",
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "New broadcast",
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "WhatsApp Web",
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Started messages",
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Payments",
                        ),
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Settings",
                        ),
                      ),
                    ]),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(
            //     Icons.more_vert,
            //   ),
            // ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Icon(
                  Icons.camera_alt_rounded,
                  size: 22.0,
                ),
              ),
              Tab(
                child: Text(
                  "CHATS",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "STATUS",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Helvetica',
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "CALLS",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CameraPage(),
            ChatsPage(),
            StatusPage(),
            CallsPage(),
          ],
        ),
      ),
    );
  }
}
