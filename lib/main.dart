import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'register_web_webview_stub.dart' if(dart.library.html) 'register_web_webview.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'Homepage.dart';
void main() {
  registerWebViewWebImplementation();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
 runApp(const Myapp());
}

class Myapp extends StatelessWidget {

  const  Myapp({Key?key}) :super(key: key);
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: AnimatedSplashScreen(
        backgroundColor: Colors.black,
        splash:Image.asset('extras/search.gif',
        ),
        duration: 3500,
        splashTransition:null ,
        nextScreen:const Homepage(),

      ),
    );
  }


