import 'package:flutter/material.dart';
import 'package:whatsapp/data/catalog.dart';
import 'package:whatsapp/pages/home_page.dart';
import 'package:camera/camera.dart';
import 'package:whatsapp/screen/camera_screen.dart';
import 'package:whatsapp/screen/chat_screen.dart';


// late List<CameraDescription> cameras;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late final Item item;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        fontFamily: 'Helvetica',
      ),
      // home: MyHomePage(),
      routes: {
        "/": (context) => MyHomePage(),
        // "/chatscreen": (context) => ChatScreen(item: item,),
        //TODO: add chat screen route
      },
    );
  }
}




