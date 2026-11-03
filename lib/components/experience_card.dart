import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const ExperienceCard({
    super.key,
    required this.title,
    this.icon = Icons.work,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent),
        title: Text(title),
      ),
    );
  }
}
