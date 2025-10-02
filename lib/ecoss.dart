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
            Text('Terokai', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 140,
                    child: Card.filled(
                      elevation: 6,
                      color: const Color.fromARGB(255, 209, 209, 209),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/scan_qr.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          Text('Sejarah Pembelian'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16), // Space between buttons
                Expanded(
                  child: SizedBox(
                    height: 140,
                    child: Card.filled(
                      elevation: 6,
                      color: const Color.fromARGB(255, 209, 209, 209),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/transaction_history.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          Text('Sejarah Pembelian'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
            Text('Lokasi Kedai', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            TextField(
              decoration: InputDecoration(
                hintText: 'Carian..',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.black, // outline color
                    width: 2.0, // thickness of the outline
                  ),
                ),
                filled: true,
                fillColor: const Color(0xFFF1F1F1),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Tiada lokasi peruncit berdekatan ditemuai',
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
