import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:design_01/pages/basic_page.dart';
import 'package:design_01/pages/scroll_page.dart';
import 'package:design_01/pages/full_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'full',
      routes: {
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'full': (BuildContext context) => FullPage(),
      },
    );
  }
}
