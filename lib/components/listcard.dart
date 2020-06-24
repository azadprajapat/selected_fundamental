import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/Apptheme.dart';

class ListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var height= MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Apptheme.color1,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 2.0,
              spreadRadius: 1.0,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.maxFinite,
        height: (height/720)*142,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Fundamental",
                    style: TextStyle(
                        fontSize: Apptheme.size2,
                        color: Apptheme.color3,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: height/36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  itemrow(),
                  itemrow()
                ],
              ),
              SizedBox(
                height: height/36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  itemrow(),
                  itemrow()
                ],
              ),
              SizedBox(
                height: height/36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  itemrow(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


//row of each category in listcard raw data;
class itemrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
     return Row(
      children: <Widget>[
        Text(
          "Avg vol 3m",
          style: TextStyle(fontSize: Apptheme.size2, color: Apptheme.color2),
        ),
        SizedBox(
          width: (width/360)*20,
        ),
        Text(
          "5.05k",
          style: TextStyle(fontSize: Apptheme.size2, color: Apptheme.color3),
        ),
      ],
    );
  }
}
