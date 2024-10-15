import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LyricsGeneratorApp(),
    );
  }
}

class LyricsGeneratorApp extends StatefulWidget {
  @override
  _LyricsGeneratorAppState createState() => _LyricsGeneratorAppState();
}

class _LyricsGeneratorAppState extends State<LyricsGeneratorApp> {
  final TextEditingController _languageController = TextEditingController();
  final TextEditingController _genreController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String _generatedLyrics = '';

  void _generateLyrics() {
    // Call the backend here
    // Set state to update UI with generated lyrics
    setState(() {
      _generatedLyrics = 'Generated lyrics will appear here...';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AI Music Production App')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _languageController,
              decoration: InputDecoration(labelText: 'Language'),
            ),
            TextField(
              controller: _genreController,
              decoration: InputDecoration(labelText: 'Genre'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Describe the song'),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _generateLyrics,
              child: Text('Create/Update Lyrics'),
            ),
            SizedBox(height: 20),
            Text(
              'Lyrics:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              _generatedLyrics,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
