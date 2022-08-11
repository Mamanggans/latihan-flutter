import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
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
              'indonesia',
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
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'CiLiwung, atau biasa ditulis Ciliwung[1] adalah salah satu sungai terpenting di Tatar Pasundan,'
        'terutama karena melalui wilayah ibu kota, DKI Jakarta, dan kerap menimbulkan banjir tahunan di wilayah hilirnya.'
        'Panjang aliran utama sungai ini adalah hampir 120 km dengan daerah tangkapan airnya  seluas 387 km persegi.'
        'Sungai ini relatif lebar dan di bagian hilirnya dulu dapat dilayari oleh perahu kecil pengangkut barang dagangan.'
        'Wilayah yang dilintasi CiLiwung adalah Kabupaten Bogor, Kota Bogor, Kota Depok, dan Jakarta.'
        'enjoiyed',
        softWrap: true,
      ),
    );
        return MaterialApp(
      title: 'Flutter Layout Demo',
      home: Scaffold(
        appBar: AppBar(
        title: Text('Flutter Layout Demo'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/ciliwung.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
      ),
    );
 }

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
        ),
      )
    ],
  );
  
}
}