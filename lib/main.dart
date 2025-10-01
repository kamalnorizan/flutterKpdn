import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My App')),
        drawer: Drawer(child: Center(child: Text('Drawer Content'))),
        persistentFooterButtons: [
          TextButton(onPressed: () {}, child: Text('Footer Button 1')),
          TextButton(onPressed: () {}, child: Text('Footer Button 2')),
          TextButton(onPressed: () {}, child: Text('Footer Button 3')),
        ],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.blue,
              height: 100,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Header',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: double.infinity,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.star, color: Colors.white),
                    Text(
                      'Red Container',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.star, color: Colors.white),
                    Text(
                      'Red Container',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.star, color: Colors.white),
                    Text(
                      'Red Container',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Header',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
