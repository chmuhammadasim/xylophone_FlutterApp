import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  final AudioCache _audioCache = AudioCache();
  //you must use flutter player of an older version in your pubspec.yaml file because
//the newer version does not provide the facility of "play"
//option and will through an error that the "play method" isn't
//defined for _audioCache
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("XYLOPHONE", textAlign: TextAlign.center)),
        backgroundColor: Colors.blueGrey,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              _audioCache.play("assets_assets_note1.wav");
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const SizedBox(
                width: double.infinity,
                height: 60,
                child: Text(
                  "button 1",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
          ),
          ElevatedButton(
            onPressed: () {
              _audioCache.play("assets_assets_note2.wav");
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreen),
            child: const SizedBox(
              width: double.infinity,
              height: 60,
              child: Text(
                "button 2",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _audioCache.play("assets_assets_note3.wav");
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
            child: const SizedBox(
              width: double.infinity,
              height: 60,
              child: Text("button 3",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _audioCache.play("assets_assets_note4.wav");
            },
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
            child: const SizedBox(
              width: double.infinity,
              height: 60,
              child: Text("button 4",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _audioCache.play("assets_assets_note5.wav");
            },
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
            child: const SizedBox(
              width: double.infinity,
              height: 60,
              child: Text("button 5",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _audioCache.play("assets_assets_note6.wav");
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent),
            child: const SizedBox(
              width: double.infinity,
              height: 60,
              child: Text("button 6",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _audioCache.play("assets_assets_note7.wav");
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
            child: const SizedBox(
              width: double.infinity,
              height: 60,
              child: Text("button 7",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
            ),
          ),
        ]),
      ),
    );
  }
}
