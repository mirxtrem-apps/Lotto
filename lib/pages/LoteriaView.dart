import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoteriaView extends StatefulWidget {
  @override
  _LoteriaViewState createState() => _LoteriaViewState();
}

class _LoteriaViewState extends State<LoteriaView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 25.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('FECHA'),
              SizedBox(width: 10.0,),
              Icon(FontAwesomeIcons.calendarAlt)
            ],
          ),
        ],
      ),
    );
  }
}