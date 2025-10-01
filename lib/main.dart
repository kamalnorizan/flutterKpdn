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
        body: Container(
          color: Colors.yellow,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.blue,
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.home, color: Colors.white, size: 60),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat Datang',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            'Pengguna',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.notification_important,
                      color: Colors.white,
                      size: 50,
                    ),
                  ],
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

              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: List.generate(
                    10,
                    (index) => ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Person ${index + 1}'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
