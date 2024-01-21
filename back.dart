import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Back extends StatefulWidget {
  const Back({Key? key}) : super(key: key);

  @override
  _BackState createState() => _BackState();
}

class _BackState extends State<Back> {
  final videoURL = "https://www.youtube.com/watch?v=2VuLBYrgG94";

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
        appBar: AppBar(title: const Text("Back Pain Recovery Exercises")),
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
                Text(
                  "OVERVIEW",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  "These back pain stretches and exercises are for general back pain like soreness from overworking your back or if you've pulled a muscle.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ));
  }
}
