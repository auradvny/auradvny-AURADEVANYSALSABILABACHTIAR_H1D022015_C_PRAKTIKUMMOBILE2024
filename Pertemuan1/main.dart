import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vektor Operations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VektorPage(),
    );
  }
}

class VektorPage extends StatefulWidget {
  const VektorPage({super.key});

  @override
  _VektorPageState createState() => _VektorPageState();
}

class _VektorPageState extends State<VektorPage> {
  // Definisi vektor A dan B
  List<int> vektorA = [2, 4, 6];
  List<int> vektorB = [1, 3, 5];
  int skalar = 3;

  // Variabel untuk menyimpan hasil
  List<int>? hasilPenjumlahan;
  List<int>? hasilPengurangan;
  List<int>? hasilPerkalianSkalar;

  @override
  void initState() {
    super.initState();
    // Hitung hasil operasi saat inisialisasi
    hasilPenjumlahan = tambahVektor(vektorA, vektorB);
    hasilPengurangan = kurangiVektor(vektorA, vektorB);
    hasilPerkalianSkalar = kaliVektorDenganSkalar(vektorA, skalar);
  }

  // Fungsi untuk menjumlahkan dua vektor
  List<int> tambahVektor(List<int> a, List<int> b) {
    List<int> hasil = [];
    for (int i = 0; i < a.length; i++) {
      hasil.add(a[i] + b[i]);
    }
    return hasil;
  }

  // Fungsi untuk mengurangkan dua vektor
  List<int> kurangiVektor(List<int> a, List<int> b) {
    List<int> hasil = [];
    for (int i = 0; i < a.length; i++) {
      hasil.add(a[i] - b[i]);
    }
    return hasil;
  }

  // Fungsi untuk mengalikan vektor dengan skalar
  List<int> kaliVektorDenganSkalar(List<int> a, int skalar) {
    List<int> hasil = [];
    for (int i = 0; i < a.length; i++) {
      hasil.add(a[i] * skalar);
    }
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Operasi Vektor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Vektor A: [2, 4, 6]'),
            const Text('Vektor B: [1, 3, 5]'),
            const SizedBox(height: 20),
            Text('Hasil Penjumlahan: $hasilPenjumlahan'),
            Text('Hasil Pengurangan: $hasilPengurangan'),
            Text('Hasil Perkalian Skalar (3): $hasilPerkalianSkalar'),
          ],
        ),
      ),
    );
  }
}
