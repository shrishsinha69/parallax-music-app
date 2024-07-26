// lib/Screens/SongDetailPage.dart

import 'package:flutter/material.dart';
import '../Dataset/Song.dart';

class SongDetailPage extends StatelessWidget {
  final Song song;

  SongDetailPage({required this.song});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(song.title),
        backgroundColor: Color(0xff920201),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/${song.image}',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
            SizedBox(height: 20),
            Text(
              song.title,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              song.year,
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              'Song Description...',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
