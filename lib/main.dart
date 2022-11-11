import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:iconupload/not_found_page.dart';
import 'register_web_webview_stub.dart' if(dart.library.html) 'register_web_webview.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'not_found_page.dart';
import 'Homepage.dart';
void main() {
  registerWebViewWebImplementation();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
 runApp(const Myapp());
}

class Myapp extends StatelessWidget {

  const  Myapp({Key?key}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      initialRoute: '/',
      routes: {
        '/':(context) => AnimatedSplashScreen(
          backgroundColor: Colors.black,
          splash: Image.asset('extras/search.gif',
          ),
          duration: 2500,
          splashTransition: null,
          nextScreen: const Homepage(),
    ),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => const NotFoundPage()),
    );
  }

  }


