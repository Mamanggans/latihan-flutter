import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout demo',
      home: Scaffold(
        appBar: AppBar(
        title: Text('flutter layout demo'),
      ),
      body: Center(
        child: Text('hello world'),
      body: Column(
        children: [
          titleSection,
        ],


      ),
      ),
    );
  }
}
Widget build(BuildContext context){
   Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
    child: Row(children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'lake campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              'swizerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],

      ),
      ),
    Icon(
      Icons.star,
      color: Colors.red[500],
    ),
  Text('41')
    ],
    ),
    );
 }
 
