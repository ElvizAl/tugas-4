import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final double radius;
  final IconData icon;

  const ProfileAvatar({
    super.key,
    this.radius = 50,
    this.icon = Icons.person,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey,
      child: Icon(icon, size: radius, color: Colors.white),
    );
  }
}
