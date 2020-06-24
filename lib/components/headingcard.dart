import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/Apptheme.dart';

class headingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "YES BANK LTD (YES B)",
                  style: TextStyle(
                    color: Apptheme.color2,
                    fontSize: Apptheme.size4,
                  ),
                ), SizedBox(
                  height: height / 72,
                ),
                Row(
                  children: <Widget>[
                    Text('\$5,789.20',
                        style: TextStyle(
                          fontSize: Apptheme.size5,
                          color: Apptheme.color3,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(
                      width: (height / 720) * 8,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        WidgetSpan(
                            child: Transform.translate(
                                offset: const Offset(2, 4),
                                child: Text(
                                  '^ ',
                                  style: TextStyle(
                                      color: Apptheme.color4,
                                      fontSize: Apptheme.size2),
                                ))),
                        TextSpan(
                            text: '+4.00 (5.28%)',
                            style: TextStyle(
                                fontSize: Apptheme.size2, color: Apptheme
                                .color4)),
                      ]),
                    ),
                  ],
                )
              ],
            ),
            InkWell(
              child: Icon(
                Icons.star_border,
                size: 30,
                color: Apptheme.color2,
              ),
            ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              alignment: Alignment.centerRight,
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Fundamental',
                        style: TextStyle(
                            fontSize: Apptheme.size3, color: Apptheme.color2)),
                    WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(2, 4),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 20,
                            color: Apptheme.color2,
                          ),
                        ))
                  ])),
            ),
          ),
        ],
      ),
    );
  }
}
