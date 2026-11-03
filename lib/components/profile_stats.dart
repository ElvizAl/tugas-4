import 'package:flutter/material.dart';
import 'stat_item.dart';

class ProfileStats extends StatelessWidget {
  final String projects;
  final String followers;
  final String following;

  const ProfileStats({
    super.key,
    required this.projects,
    required this.followers,
    required this.following,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(child: StatItem(count: projects, label: 'Proyek')),
          Expanded(child: StatItem(count: followers, label: 'Followers')),
          Expanded(child: StatItem(count: following, label: 'Following')),
        ],
      ),
    );
  }
}
