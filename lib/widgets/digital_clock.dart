import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DigitalClock extends StatefulWidget {
  DigitalClock({Key key}) : super(key: key);

  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  final styleInfo = TextStyle(
      color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w200);
  String _timerString;
  String _dayString;
  List<String> _days = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']; 

  @override
  void initState() {
    _timerString = _formatDateTime(DateTime.now());
     _dayString = _formatDay(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Text(
            _dayString,
            style: styleInfo,
          ),
          Text(
            _timerString,
            style: styleInfo,
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 75.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timerString = formattedDateTime;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('hh:mm:ss').format(dateTime);
  }
  String _formatDay(DateTime dateTime){
    var _index = dateTime.weekday;
    return _days[(_index - 1)];
  }
}
