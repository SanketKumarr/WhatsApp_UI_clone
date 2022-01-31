import 'package:flutter/material.dart';
import 'package:whatsapp/screen/status_view_screen.dart';

class OthersStatus extends StatelessWidget {
  final String name;
  final String time;
  final String imageURL;

  const OthersStatus({
    Key? key,
    required this.name,
    required this.time,
    required this.imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ViewStatus()));
      },
      leading: CircleAvatar(
        radius: 26,
        backgroundImage: NetworkImage(imageURL),
      ),
      title: Text(
        name,
      ),
      subtitle: Text(
        time,
      ),
    );
  }
}
