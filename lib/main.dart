import 'package:flutter/material.dart';
//import 'style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Images Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Text('The Living Moon'),
            SizedBox(
              child: Image.network(
                  'https://images.pexels.com/photos/47367/full-moon-moon-bright-sky-47367.jpeg'),
              height: 300.0,
              width: 300.0,
            ),
            Text('The Earth Below Us.'),
            Container(
              //child: Image.asset('/assets/images/blue-planet.jpg'),
              height: 300.0,
              width: 300.0,
              decoration: BoxDecoration(
                image: new DecorationImage(
                    image: new ExactAssetImage('assets/images/atmosphere.jpg')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
