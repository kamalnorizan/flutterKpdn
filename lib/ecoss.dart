import 'package:flutter/material.dart';

class EcossPage extends StatefulWidget {
  const EcossPage({super.key});

  @override
  State<EcossPage> createState() => _EcossPageState();
}

class _EcossPageState extends State<EcossPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('eCoss', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Center(
              child: Container(
                width: double.infinity,
                child: Card(
                  color: const Color.fromARGB(255, 215, 214, 214),
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Pemberitahuan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Harga jualan minyak masak bersubsidi semasa adalah RM 2.50 / paket. Jika pembelian anda adalah melebihi harga yang diteptapkan, sila buat aduan kepada pihak KPDN.',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 18),
            Text('TEROKAI', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
