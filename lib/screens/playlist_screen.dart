import 'package:flutter/material.dart';
import 'package:miapp6/components/song_card.dart';
import 'package:miapp6/components/song_form.dart';
import 'package:miapp6/components/song_list.dart';
import 'package:miapp6/models/song.dart';

/// Screen that builds a playlist from a form.
class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  final List<Song> _songs = [];

  //Declarar la funcion
  void _addSong(Song song) {
    setState(() {
      _songs.add(song);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi playlist')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SongForm(addSong: _addSong),
              SongList(songs: _songs),
            ],
          ),
        ),
      ),
    );
  }
}
