import 'package:flutter/material.dart';
import '../components/profil_avatar.dart';
import '../components/experience_card.dart';
import '../components/profile_info.dart';
import '../components/profile_stats.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const String userName = 'Elvis al-amsory';
  static const String role = 'Senior Backend Engineer & Dosen';
  static const List<String> experiences = [
    'Senior Backend Engineer - EDC Bank DKI',
    'Backend & System Architect - Secure Payment EDC',
    'Lead Developer - Aplikasi Sekurindo',
    'Backend Engineer - Pengembangan Sistem E-money',
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const ProfileAvatar(radius: 50),
              const SizedBox(height: 16),
              const ProfileInfo(name: userName, role: role),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Fitur edit belum aktif pada modul statis.'),
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Edit Profil'),
              ),
              const SizedBox(height: 24),
              const ProfileStats(
                projects: '15',
                followers: '1.2K',
                following: '42',
              ),
              const SizedBox(height: 24),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pengalaman Kerja',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  itemCount: experiences.length,
                  itemBuilder: (context, index) {
                    return ExperienceCard(title: experiences[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
