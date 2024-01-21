import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Diabetes4 extends StatefulWidget {
  const Diabetes4({Key? key}) : super(key: key);

  @override
  _Diabetes4State createState() => _Diabetes4State();
}

class _Diabetes4State extends State<Diabetes4> {
  final videoURL = "https://www.youtube.com/watch?v=6VFbs34JbEY";

  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Ayurvedic Medicine for Diabetes")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    onReady: () => debugPrint("Ready"),
                    bottomActions: [
                      CurrentPosition(),
                      FullScreenButton(),
                      ProgressBar(
                        isExpanded: true,
                        colors: const ProgressBarColors(
                          playedColor: Color.fromARGB(176, 32, 142, 56),
                          handleColor: Color.fromARGB(177, 48, 151, 63),
                        ),
                      ),
                      const PlaybackSpeedButton(),
                    ]),
              ],
            ),
          ),
        ));
  }
}
