import 'dart:math';
import 'dart:ui' as prefix0;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FullPage extends StatelessWidget {
  const FullPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Color.fromRGBO(55, 57, 84, 1.0),
      ),
    );
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _title(),
                _grid(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1),
          colors: [
            Color.fromRGBO(53, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ],
        ),
      ),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0)
          ]),
          borderRadius: BorderRadius.circular(60.0),
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradient,
        Positioned(
          child: pinkBox,
          top: -100.0,
        ),
      ],
    );
  }

  Widget _title() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify transaction',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(
                  color: Color.fromRGBO(116, 117, 152, 1.0),
                ),
              )),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 25.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gps_fixed, size: 25.0),
            title: Container(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel, size: 25.0),
            title: Container(),
          )
        ],
      ),
    );
  }

  Widget _grid() {
    return Table(
      children: [
        TableRow(
          children: [
            _cardButton(),
            _cardButton(),
          ],
        ),
        TableRow(
          children: [
            _cardButton(),
            _cardButton(),
          ],
        ),
        TableRow(
          children: [
            _cardButton(),
            _cardButton(),
          ],
        ),
        TableRow(
          children: [
            _cardButton(),
            _cardButton(),
          ],
        ),
        TableRow(
          children: [
            _cardButton(),
            _cardButton(),
          ],
        )
      ],
    );
  }

  Widget _cardButton() {
    return Container(
      margin: EdgeInsets.all(15.0),
      height: 180.0,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.pinkAccent,
            radius: 30.0,
            child: Icon(
              Icons.shop,
              color: Colors.white,
              size: 25.0,
            ),
          ),
          Text(
            'Item',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5.0,
          )
        ],
      ),
    );
  }
}
