
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:flutter/cupertino.dart';
import '../utils/Apptheme.dart';

class switch_button extends StatefulWidget {
  @override
  _switch_buttonState createState() => _switch_buttonState();
}

class _switch_buttonState extends State<switch_button> {
  bool status=false;
  @override
  Widget build(BuildContext context) {
     return Row(
      children: <Widget>[
        Text(
          "BSE",
          style: TextStyle(
              fontSize: Apptheme.size1,
              color: status ? Apptheme.color2 : Apptheme.color3,
              fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GestureDetector(
            onTap: () {
              setState(() {
                status = !status;
              });
            },
            child: CustomSwitchButton(
              buttonHeight: 25,
              buttonWidth: 45,
              indicatorBorderRadius: 15,
              indicatorWidth: 20,
              backgroundColor: Apptheme.switchcolor,
              unCheckedColor: Apptheme.color3,
              animationDuration: Duration(milliseconds: 500),
              checkedColor: Apptheme.color3,
              checked: status,
            ),
          ),
        ),
        Text(
          "NSE",
          style: TextStyle(
              fontSize: Apptheme.size1,
              color: status ? Apptheme.color3 : Apptheme.color2,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
