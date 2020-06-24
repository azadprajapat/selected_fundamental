
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selectedfundamental/utils/Apptheme.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'components/appbar.dart';
import 'components/headingcard.dart';
import 'components/listcard.dart';

// all theme data like color, textstyle are added in utils/apptheme.dart
// all components are added in components folder

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'selected_fundamental',
       home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Apptheme.color1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
             //to display the custom appbar containing icon and switch button
              appbar(),
              //this card contain the bank detail and other related stuff
              headingCard(),
              // this card contain the whole card named fundamental
              ListCard(),
            ],
          ),
        ),
      ),


      //bottom navigation bar containing the switch button for home,news,watchlist,profile
      bottomNavigationBar: bmnav.BottomNav(
        iconStyle: bmnav.IconStyle(
            onSelectColor: Apptheme.color3,
            color: Apptheme.color2
        ),
        labelStyle: bmnav.LabelStyle(
          textStyle: TextStyle(color: Apptheme.color2),
          onSelectTextStyle: TextStyle(color:Apptheme.color3 )
        ),
        items: [
          bmnav.BottomNavItem(Icons.home, label: 'Home'),
          bmnav.BottomNavItem(Icons.library_books, label: 'news'),
          bmnav.BottomNavItem(Icons.star_border, label: 'Watchlist'),
          bmnav.BottomNavItem(Icons.perm_identity, label: 'profile')
        ],
      ),
    );
  }

}
