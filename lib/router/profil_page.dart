import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
    const ProfilPage({super.key});

    static const String userName = 'Elvis al-amsory';

    static const String role = 'Senior Backend Engineer & Dosen';

    static const List<String> experiences = [
        'Backend Engineer di PT. XYZ (2020 - Sekarang)',
        'Dosen di Universitas ABC (2018 - Sekarang)',
        'Freelance Developer (2015 - 2020)',
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Profil Pengguna'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
      );
    }


}
