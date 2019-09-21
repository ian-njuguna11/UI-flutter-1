import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleIcons = TextStyle(
      color: Colors.blue, fontSize: 13.0, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2015/07/06/13/58/arlberg-pass-833326__340.jpg',
                height: 180.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: ListTile(
                title: Text('Oechinen Lake Campground'),
                subtitle: Text('Kendersteg, Switzerland'),
                trailing: Icon(Icons.star),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _iconText(Icons.call, 'CALL'),
                _iconText(Icons.gps_fixed, 'ROUTE'),
                _iconText(Icons.share, 'SHARE')
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: SafeArea(
                child: Text(
                  'Laboris aliquip culpa pariatur consectetur cillum. Aliquip irure incididunt nulla aliqua sunt laboris proident aute quis velit. Eiusmod aliqua exercitation ut tempor non adipisicing. Nisi voluptate ullamco eu cillum. Fugiat anim dolor cillum quis aliquip aute. Elit dolor anim aliqua cupidatat ut duis est excepteur laboris cillum.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconText(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 25.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: styleIcons,
        )
      ],
    );
  }
}
