import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class ViewStatus extends StatelessWidget {
  const ViewStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    // final List<StoryItem> storyItems = [
    //   StoryItem.pageImage(
    //     url:
    //         "https://th.bing.com/th/id/OIP.fe4CZLD92RpRpkAt5TcrRQHaNK?pid=ImgDet&rs=1",
    //     controller: controller,
    //   ),
    // ];
    return Material( 
      child: StoryView(
        storyItems: [
          StoryItem.pageImage(
            url:
                "https://th.bing.com/th/id/OIP.fe4CZLD92RpRpkAt5TcrRQHaNK?pid=ImgDet&rs=1",
            controller: controller,
          ),
          StoryItem.text(
            title: "Story successful.!!",
            backgroundColor: Colors.teal,
          ),
        ],
        controller: controller,
        inline: false,
        repeat: false,
        onComplete: () {
          print("Story completed");
        },
      ),
    );
  }
}
