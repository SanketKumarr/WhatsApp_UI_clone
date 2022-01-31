import 'package:flutter/material.dart';
import 'package:whatsapp/data/catalog.dart';

class FriendProfile extends StatefulWidget {
  final Item item;

  const FriendProfile({Key? key, required this.item}) : super(key: key);

  @override
  _FriendProfileState createState() => _FriendProfileState();
}

class _FriendProfileState extends State<FriendProfile> {
  late final Item item;
  bool value = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 20,
            pinned: true,
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            actions: [PopupMenuButton(itemBuilder: (context) => [])],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                item.image,
                fit: BoxFit.cover,
              ),
              title: Text(
                item.name,
              ),
            ),
          ),
          // buildImages(),
        ],
      ),
    );
  }
}

Widget buildImages() => SliverToBoxAdapter(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      "Mute notifications",
                    ),
                    // trailing:
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      "Custom notifications",
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      "Media visibility",
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: 5),
    );

// class CustomSwitch extends StatefulWidget {
//   const CustomSwitch({Key? key}) : super(key: key);
//
//   @override
//   _CustomSwitchState createState() => _CustomSwitchState();
// }
//
// class _CustomSwitchState extends State<CustomSwitch> {
//   @override
//   Widget build(BuildContext context) {
//     bool isSwitched = false;
//     void toggleSwitch(bool value) {
//       if (isSwitched == false) {
//         setState(() {
//           isSwitched = true;
//         });
//         print('Switch Button is ON');
//       }
//       else {
//         setState(() {
//           isSwitched = false;
//         });
//       }
//     }
//     return Container();
//   }
// }
