import 'package:design_01/widgets/digital_clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Color.fromRGBO(108, 192, 2018, 1.0),
      ),
    );
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2(context),
        ],
      ),
    );
  }

  ///PAGE 1
  ///
  Widget _page1() {
    return Stack(
      children: <Widget>[_colorFondo(), _imageFondo(), DigitalClock()],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 2018, 1.0),
    );
  }

  Widget _imageFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        'assets/scroll-1.png',
        fit: BoxFit.cover,
      ),
    );
  }

  ////

  Widget _page2(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 2018, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
            child: Text(
              'Welcome',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'full');
          },
        ),
      ),
    );
  }
}
