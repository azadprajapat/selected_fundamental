import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selectedfundamental/components/switchbutton.dart';

import '../utils/Apptheme.dart';

class appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Container(
              child: Icon(
                Icons.more_vert,
                size: 25,
                color: Apptheme.color3,
              )),
        ),
        switch_button()
      ],
    );
  }
}
