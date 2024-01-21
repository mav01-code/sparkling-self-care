import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Paralysis extends StatefulWidget {
  const Paralysis({Key? key}) : super(key: key);

  @override
  _ParalysisState createState() => _ParalysisState();
}

class _ParalysisState extends State<Paralysis> {
  final videoURL = "https://www.youtube.com/watch?v=qVgZYYvcGqM";

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
        appBar: AppBar(title: const Text("Paralysis Recovery Exercises")),
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
                  "Bell’s palsy is when one side of the face becomes paralyzed. Movement of the eye, forehead, nose, and lips may be difficult if not impossible.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "However, along with medical treatment, physical therapy can help restore movement to the paralyzed face, just like physical therapy can help restore arm and leg movement for somebody who has suffered a stroke.When there is no movement present at all, the following exercises are helpful in attempting to reinitiate some movement.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "All exercises to be performed twice a day, 5-10 repetitions each time. And perform these in front of the mirror so you can visually monitor your efforts! The visual feedback is important!",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "It is important to focus on the effort or quality of the movement rather than the quantity of movement. The quality of effort is to really focus and concentrate HARD on trying to get the paralyzed side moving symmetrically with the normal side.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
