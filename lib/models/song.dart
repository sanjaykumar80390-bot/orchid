class Song {
  final String id;
  final String title;
  final String artist;
  final String coverUrl;
  final String audioUrl;

  Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.coverUrl,
    required this.audioUrl,
  });
}

// Sample songs for testing
List<Song> sampleSongs = [
  Song(
    id: '1',
    title: 'Chill Vibes',
    artist: 'Artist One',
    coverUrl: 'https://picsum.photos/300/300?random=1',
    audioUrl: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
  ),
  Song(
    id: '2',
    title: 'Summer Dreams',
    artist: 'Artist Two',
    coverUrl: 'https://picsum.photos/300/300?random=2',
    audioUrl: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3',
  ),
  Song(
    id: '3',
    title: 'Night Drive',
    artist: 'Artist Three',
    coverUrl: 'https://picsum.photos/300/300?random=3',
    audioUrl: 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3',
  ),
];
