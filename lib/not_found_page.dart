import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'Homepage.dart';
import 'main.dart';


class NotFoundPage extends StatefulWidget {
  const NotFoundPage({Key?key}): super (key:key);

  @override
  NotFoundPageState createState() => NotFoundPageState();

}

class NotFoundPageState extends State<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.blueGrey,
      body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset('extras/searching.gif'),
            SizedBox(width:400,height:50,

              child: AnimatedTextKit(
                  repeatForever:true,
                  animatedTexts: [
                    FlickerAnimatedText('OOPS!! PAGE NOT FOUND',
                    textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: "Sabon"),
                    ),
                  ],
                ),


            ),
            ElevatedButton(
                onPressed: (){
                 Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                     builder: (context) => const Homepage(),maintainState: true ),
                     (Route<dynamic> route)=> false
                 );
                },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                  ),

              ),
                child: const Text(' Go To Search Page ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sabon"),
                ),
            ),
          ],
        ),
      ),
    );
  }


}
