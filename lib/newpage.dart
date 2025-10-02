import 'package:flutter/material.dart';
import 'package:mykpdn/ecoss.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: Column(
          children: [
            Center(
              child: Text(counter.toString(), style: TextStyle(fontSize: 40)),
            ),
            ElevatedButton(
              onPressed: () {
                counter++;
                print(counter);
              },
              child: Text('Increment Counter'),
            ),
            ElevatedButton(
              onPressed: () {
                counter--;
                setState(() {});
                print(counter);
              },
              child: Text('Decrement Counter'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EcossPage()),
                );
              },
              child: Text('ECoss'),
            ),
          ],
        ),
      ),
    );
  }
}
