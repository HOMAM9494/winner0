import 'package:flutter/material.dart';

Widget buildSocialMediaRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 20,
        backgroundColor: Color.fromARGB(255, 160, 61, 16),
        child: const Icon(Icons.facebook, color: Colors.white),
      ),
      const SizedBox(width: 12),
      CircleAvatar(
        radius: 20,
        backgroundColor: Colors.pink,
        child: const Icon(Icons.camera_alt, color: Colors.white),
      ),
      const SizedBox(width: 12),
      CircleAvatar(
        radius: 20,
        backgroundColor: Colors.black,
        child: const Icon(Icons.music_note, color: Colors.white),
      ),
    ],
  );
}
