import 'package:flutter/material.dart';
import 'package:miapp6/models/song.dart';

//Un formulario deberia ser stateful
class SongForm extends StatelessWidget {
  final _titleController = TextEditingController();
  final _artistController = TextEditingController();
  final _imageUrlController = TextEditingController()
    ..text = "https://picsum.photos/400";

  //La entrada va a ser la accion de agregar
  final Function(Song song) addSong;

  SongForm({required this.addSong});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _titleController,
          decoration: const InputDecoration(labelText: 'Canción'),
        ),
        TextField(
          controller: _artistController,
          decoration: const InputDecoration(labelText: 'Artista'),
        ),
        TextField(
          controller: _imageUrlController,
          decoration: const InputDecoration(labelText: 'URL de la imagen'),
        ),
        FilledButton(
          onPressed: () {
            Song newsong = Song(
              title: _titleController.text,
              artist: _artistController.text,
              imageUrl: _imageUrlController.text,
            );
            addSong(newsong);
          },
          child: const Text('Agregar'),
        ),
      ],
    );
  }
}
