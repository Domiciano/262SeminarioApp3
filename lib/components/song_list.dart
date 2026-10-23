import 'package:flutter/material.dart';
import 'package:miapp6/components/song_card.dart';
import 'package:miapp6/models/song.dart';

class SongList extends StatelessWidget {
  final List<Song> songs;
  SongList({required this.songs});

  @override
  Widget build(BuildContext context) {
    return Column(children: [for (final song in songs) SongCard(song: song)]);
  }
}
