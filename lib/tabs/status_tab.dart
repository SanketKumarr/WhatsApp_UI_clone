import 'package:flutter/material.dart';
import 'package:whatsapp/tiles/status_head_tile.dart';
import 'package:whatsapp/tiles/status_others_tile.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[100],
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.blueGrey[900],
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.camera_alt_rounded),
            backgroundColor: Colors.greenAccent[700],
            elevation: 5,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 7,
            ),
            StatusHead(),
            label("Recent updates"),
            OthersStatus(
              name: "Arthur Shelby",
              time: "20 minutes ago",
              imageURL:
                  "https://man-man.nl/app/uploads/2019/11/arthur-shelby-wallpaper.jpg",
            ),
            OthersStatus(
              name: "John Shelby",
              time: "Today, 1:000 am",
              imageURL: "https://wallpaperaccess.com/full/2161056.jpg",
            ),
            OthersStatus(
              name: "Alfie",
              time: "Today, 1:00 am",
              imageURL:
                  "https://i.pinimg.com/originals/29/8a/62/298a624f6ee91a87b1eaeeba3357f99d.jpg",
            ),
            label("Viewed updates"),
            OthersStatus(
              name: "Luca Changretta",
              time: "Yesterday, 5:00 pm",
              imageURL: "https://wallpapercave.com/wp/wp3848591.jpg",
            ),
            OthersStatus(
              name: "Finn Shelby",
              time: "Yesterday, 1:00 pm",
              imageURL: "https://wallpapercave.com/wp/wp4869152.jpg",
            ),
            OthersStatus(
              name: "Thomas Shelby",
              time: "Yesterday, 10:00 am",
              imageURL: "https://wallpapercave.com/wp/wp6008519.jpg",
            ),
          ],
        ),
      ),
    );
  }

  Widget label(String labelName) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 7),
        child: Text(
          labelName,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
