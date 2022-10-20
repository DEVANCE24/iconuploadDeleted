import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'register_web_webview_stub.dart' if (dart.library.html) 'register_web_webview.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key?key}) :super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

String _searchstring = '';

class _HomepageState extends State<Homepage>{


bool searchwebviews = false;
bool webviews = false;
bool searchurlviews= false;
bool urlviews= false;
bool searchinganimation = false;

onclicksearchwebview() {
  setState(() {
    searchwebviews = !searchwebviews;
  });
}onclickwebview() {
  setState(() {
    webviews = !webviews;
  });
}
onclicksearchurlview(){
  setState(() {
    searchurlviews=!searchurlviews;
  });
}onclickurlview(){
  setState(() {
    urlviews=!urlviews;
  });
}

onsearchinganimation(){
  setState(() {
    searchinganimation=!searchinganimation;
  });
}

  final searchstring = TextEditingController();


List<String>  SearchWebViewLinksUpdating = [
  'https://icon-sets.iconify.design/?query=',
  'https://simpleicons.org/?q=',
  'https://iconape.com/?s=',
  'https://dryicons.com/free-icons/',
  'https://boxicons.com/?query=',
  'https://veryicon.com/search/',
  'https://lineicons.com/icons/?search=',
  'https://icon-icons.com/search/icons/?filtro=',
  'https://uxwing.com/?s=',
  'https://www.freeiconspng.com/search.html?q=',
];
List<String>  SearchWebViewLinks = [
  'https://icon-sets.iconify.design/?query=',
  'https://simpleicons.org/?q=',
  'https://iconape.com/?s=',
  'https://dryicons.com/free-icons/',
  'https://boxicons.com/?query=',
  'https://veryicon.com/search/',
  'https://lineicons.com/icons/?search=',
  'https://icon-icons.com/search/icons/?filtro=',
  'https://uxwing.com/?s=',
  'https://www.freeiconspng.com/search.html?q=',
];
List<String> SearchUrlLinksUpdating=[
  'https://flaticon.com/search?word=',
  'https://iconscout.com/icons/',
  'https://icons8.com/icons/set/',
  'https://www.iconfinder.com/search?q=',
  'https://iconmonstr.com/?s=',
  'https://fontawesome.com/search?q=',
  'https://thenounproject.com/search/icons/?iconspage=1&q=',
  'https://mui.com/material-ui/material-icons/?query=',
  'https://feathericons.com/?query=',
  'https://fonts.google.com/icons?selected=Material+Icons&icon.query=',
  'https://www.3dicons.com/search/',
  'https://pixabay.com/vectors/search/',
  'https://www.iconpacks.net/search/?icon=',

];

List<String> SearchUrlLinks=[
  'https://flaticon.com/search?word=',
  'https://iconscout.com/icons/',
  'https://icons8.com/icons/set/',
  'https://www.iconfinder.com/search?q=',
  'https://iconmonstr.com/?s=',
  'https://fontawesome.com/search?q=',
  'https://thenounproject.com/search/icons/?iconspage=1&q=',
  'https://mui.com/material-ui/material-icons/?query=',
  'https://feathericons.com/?query=',
  'https://fonts.google.com/icons?selected=Material+Icons&icon.query=',
  'https://www.3dicons.com/search/',
  'https://pixabay.com/vectors/search/',
  'https://www.iconpacks.net/search/?icon=',

];

List<String> WebviewLinks = [
  'https://lordicon.com/icons',
  'https://potlabicons.com/',
  'https://livicons.com/icons-original.php',
  'https://ikonate.com/',
  'https://v2.jam-icons.com/',
  'https://jam-icons.com/',
  'http://demo.amitjakhu.com/dripicons/',
  'https://iconer.app/',
  'http://www.zondicons.com/icons.html',
  'https://v1.heroicons.com/',
  'https://heroicons.com/',
  'https://akveo.github.io/eva-icons/',
  'https://ionic.io/ionicons',
  'https://remixicon.com/',
  'https://carbondesignsystem.com/guidelines/icons/library/',
  'https://iconsvg.xyz/',
];

List<String> UrlLinks = [
  'https://loading.io/icon/',
  'https://tilda.cc/free-icons/',
  'https://www.orioniconlibrary.com/all-icons',
  'https://zurb.com/playground/foundation-icon-fonts-3',
  '',
];


  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.blueGrey,
      body: CustomScrollView(
        slivers: [
          SliverSafeArea(
            top: true,
            left: true,
            right: true,
            minimum: const EdgeInsets.all(10),
            sliver:
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: false,
              backgroundColor: Colors.black,
              expandedHeight: 250,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                topLeft:Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)
                )
              ),
              leading: Image.asset('extras/location.png'),

              title: const Text('Icons From All Domains',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 40,
                    fontFamily: "Sabon"
                ),
              ),

                flexibleSpace: const FlexibleSpaceBar(
                  background:Padding(padding: EdgeInsets.only(top: 100.0),
                    child:Text('Hello Fellow Developers!! Get Icons From All your Favorite Websites At One Place 🔽',
                    textAlign: TextAlign.center,
                    style:TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: "Sabon"
                    ),
                  ),
                ),
                ),

                bottom: AppBar(
                    backgroundColor: Colors.transparent,
                    title: Padding( padding:  const EdgeInsets.all(10),
                      child: Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox( width: 630, height: 50,
                              child: TextField(
                                controller:  searchstring,
                                decoration: const InputDecoration(
                                  hintText:' Search For Desired Icon🧐',
                                  hoverColor:  Colors.black12,
                                  focusColor: Colors.blue,
                                  filled: true,
                                  fillColor: Colors.white,
                                  border:OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.all(Radius.circular(25)
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,height: 50),

                            SizedBox(width: 50,height: 50,
                              child:Ink(
                                decoration: const ShapeDecoration(
                                    color: Colors.blue,
                                    shape: CircleBorder()
                                ),
                                child: IconButton(
                                  icon:const Icon(Icons.search),
                                  color: Colors.black,
                                  tooltip: 'Dreamwalk the Multiverse ✨',
                                  hoverColor: Colors.red,
                                  splashColor: Colors.amberAccent,
                                  splashRadius: 25,
                                  onPressed: ()
                                  async {
                                    setState(() {
                                      _searchstring = searchstring.text;
                                    Updatelinks();
                                      onsearchinganimation();
                                    if(searchwebviews==searchinganimation) {
                                      onclicksearchwebview();
                                    }
                                    if(searchurlviews==searchinganimation){
                                      onclicksearchurlview();
                                    }
                                    });
                                  },
                                ),
                                ),
                              ),
                          ]
                      ),
                    ),
                ),
            ),
        ),

          SliverToBoxAdapter(
            child:SliverVisibility(visible: searchinganimation ,
              sliver: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  AnimatedTextKit( animatedTexts:[
                        RotateAnimatedText('Searching for',
                          textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          fontFamily: "Sabon"),
                          duration: const Duration( milliseconds: 2000),
                        ),
                        TyperAnimatedText('$_searchstring...',
                            textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25, fontFamily: "Sabon"),
                                speed: const Duration(milliseconds: 500)
                        ),
                      ],
                        displayFullTextOnTap: false,
                        stopPauseOnTap: false,
                        isRepeatingAnimation: false,
                        pause: const Duration(milliseconds: 0),
                        onFinished: ()async{
                        onclicksearchwebview();
                        onclicksearchurlview();
                       onsearchinganimation();
                        },
                      ),
                    
                ],
              ),
              replacementSliver: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [

                  const Divider(
                    color: Colors.black,
                    height: 30,
                    thickness: 10,
                  ),

                  Padding(padding:const EdgeInsets.fromLTRB(10, 0 ,10, 0) ,
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        FloatingActionButton.extended(
                          onPressed: ()async{
                            onclicksearchwebview();
                          },
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.black,
                          hoverColor: Colors.red,
                          splashColor: Colors.amberAccent,
                          label: searchwebviews?const Icon(Icons.keyboard_arrow_up):const Icon(Icons.keyboard_arrow_down),
                          tooltip: searchwebviews?'Hide 😳':'Show 😏',
                        ),
                        const SizedBox(height: 50,width: 20,),
                        Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black,
                                width: 2
                            ),
                          ),
                          child:const Text('  Searchable Icons In Views  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontFamily: "Sabon"),

                          ),
                        ),
                      ],
                    ),
                  ),

                  Visibility(visible: searchwebviews,
                    child:GridView.custom(
                    padding: const EdgeInsets.all(30),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 50,
                        crossAxisSpacing: 50,
                        childAspectRatio: 1.7
                    ),
                    childrenDelegate:SliverChildBuilderDelegate((context, index) {
                      return _searchwebviews(index);
                    },
                      childCount: 10,
                    ),
                  ),
                  ),

                  const Divider(
                    color: Colors.black,
                    height: 30,
                    thickness: 10,
                  ),

                  Padding(padding:const EdgeInsets.fromLTRB(10, 0 ,10, 0) ,
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        FloatingActionButton.extended(
                          onPressed: ()async{
                            onclicksearchurlview();
                          },
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.black,
                          hoverColor: Colors.red,
                          splashColor: Colors.amberAccent,
                          label: searchurlviews?const Icon(Icons.keyboard_arrow_up):const Icon(Icons.keyboard_arrow_down),
                          tooltip: searchurlviews?'Hide 😳':'Show 😏',
                        ),
                        const SizedBox(height: 50,width: 20,),
                        Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 2
                            ),
                          ),
                          child:const Text('  Searchable Icons In List  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: "Sabon"),

                        ),
                        ),
                      ],
                    ),
                  ),

                  Visibility( visible: searchurlviews,
                    child: ListView.custom(
                  padding: const EdgeInsets.all(10),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                  itemExtent: 40,
                  childrenDelegate: SliverChildBuilderDelegate((context, index) {
                      return _searchurls(index);
                    },
                      childCount: 13,
                    ),
                  ),
                  ),

                  const Divider(
                    color: Colors.black,
                    height: 30,
                    thickness: 10,
                  ),

                  Padding(padding:const EdgeInsets.fromLTRB(10, 0 ,10, 0) ,
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,

                      children:[
                        FloatingActionButton.extended(
                          onPressed: ()async{
                            onclickwebview();
                          },
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.black,
                          hoverColor: Colors.red,
                          splashColor: Colors.amberAccent,
                          label: webviews?const Icon(Icons.keyboard_arrow_up):const Icon(Icons.keyboard_arrow_down),
                          tooltip: webviews?'Hide 😳':'Show 😏',
                        ),
                        const SizedBox(height: 50,width: 20,),
                        Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black,
                                width: 2
                            ),
                          ),
                          child:const Text('  Fixed Icons Views  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontFamily: "Sabon"),

                          ),
                        ),
                      ],
                    ),
                  ),

                  Visibility(visible: webviews,
                    child:GridView.custom(
                    padding: const EdgeInsets.all(10),
                    scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 30,
                        crossAxisSpacing: 30,
                        childAspectRatio: 1.7
                      ),
                      childrenDelegate: SliverChildBuilderDelegate((context, index) {
                        return _webviews(index);
                      },
                        childCount: 16,
                      ),
                  ),
              ),

                  const Divider(
                    color: Colors.black,
                    height: 30,
                    thickness: 10,
                  ),

                  Padding(padding:const EdgeInsets.fromLTRB(10, 0 ,10, 0) ,
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,

                      children:[
                        FloatingActionButton.extended(
                          onPressed: ()async{
                            onclickurlview();
                          },
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.black,
                          hoverColor: Colors.red,
                          splashColor: Colors.amberAccent,
                          label: urlviews?const Icon(Icons.keyboard_arrow_up):const Icon(Icons.keyboard_arrow_down),
                          tooltip: urlviews?'Hide 😳':'Show 😏',
                        ),

                        const SizedBox(height: 50,width: 20,),
                        Container(
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.black,
                                width: 2
                            ),
                          ),
                          child:const Text('  Fixed Icons List  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontFamily: "Sabon"),

                          ),
                        ),
                      ],
                    ),
                  ),

                  Visibility(visible: urlviews,
                    child:ListView.custom(
                      padding: const EdgeInsets.all(10),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemExtent: 40,
                      childrenDelegate: SliverChildBuilderDelegate((context, index){
                        return _urls(index);
                        },
                        childCount: 4,
                      ),
                    ),
                  ),

                  const Divider(
                    color: Colors.black,
                    height: 50,
                    thickness: 10,
                  ),

                ],
              ),
            ),
          ),
           SliverToBoxAdapter(
            child: Padding(padding: EdgeInsets.all(10),
              child:Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25)
                ),
                padding: const EdgeInsets.all(20),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    IconButton(
                    onPressed: ()async {
                      sendEmail();
                      },
                      color: Colors.white,
                      icon: const Icon(Icons.mail_outline_outlined),
                      splashRadius: 25,
                      tooltip: '📧 Suggestion/Missing Website',
                  ),
                  const SizedBox(width: double.infinity,height:0,),
                  const Text('©Copyrights to Respective Website Owners',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: "Sabon",
                    ),
                    ),
                  ],
                ),
              ),
            ),
           ),
        ]
      ),

    );
  }

void Updatelinks(){
  List<String>  newWebList = [];
  List<String>  newUrlList = [];
  SearchWebViewLinksUpdating.forEach((element) {
    newWebList.add(element = element + searchstring.text);

  });
  SearchUrlLinksUpdating.forEach((element) {
    newUrlList.add(element=element+searchstring.text);
  });

  SearchWebViewLinks = [];
  SearchWebViewLinks = newWebList;
  SearchUrlLinks = [];
  SearchUrlLinks = newUrlList;

}
Widget _searchwebviews(int index){
  return  WebView(
      initialUrl:  SearchWebViewLinks[index],
      javascriptMode: JavascriptMode.disabled,

  );
}

Widget _webviews(int index){
    return WebView(
      initialUrl: WebviewLinks[index],
      javascriptMode: JavascriptMode.disabled,
    );
}
Widget _searchurls(int index){
  return Padding(padding: const EdgeInsets.all(2),
     child:TextButton(
      onPressed: () async {
        launchUrl(SearchUrlLinks[index]);
      },
      style: TextButton.styleFrom(
        primary: Colors.red,
        backgroundColor: Colors.white,
        alignment: Alignment.centerLeft,
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: "Sabon",
          backgroundColor: Colors.white,
        ),
      ),
       child: Text(SearchUrlLinks[index],
         style: const TextStyle(
        color: Colors.black,
      ),
    ),
  ),
  );
}Widget _urls(int index){
  return Padding(padding: const EdgeInsets.all(2),
     child:TextButton(
      onPressed: () async {
        launchUrl(UrlLinks[index]);
      },
      style: TextButton.styleFrom(
        primary: Colors.red,
        backgroundColor: Colors.white,
        alignment: Alignment.centerLeft,
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: "Sabon",
          backgroundColor: Colors.white,
        ),
      ),
       child: Text(UrlLinks[index],
         style: const TextStyle(
        color: Colors.black,
      ),
    ),
  ),
  );
}
void launchUrl(String urlString)async{
  await canLaunchUrlString(urlString)
      ?await  launchUrlString(urlString)
      :throw "Couldn't Launch $urlString";
}
void sendEmail(){
    launchUrl("mailto:desaidevansh24@gmail.com");
}
}
