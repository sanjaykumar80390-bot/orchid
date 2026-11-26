import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/song.dart';
import '../widgets/song_card.dart';
import 'player_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A14),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                '🌸 Orchid',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            
            // Greeting
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Good evening',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.white70,
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Song List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: sampleSongs.length,
                itemBuilder: (context, index) {
                  final song = sampleSongs[index];
                  return SongCard(
                    song: song,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlayerScreen(song: song),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
