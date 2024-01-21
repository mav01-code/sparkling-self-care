import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Sport1 extends StatefulWidget {
  const Sport1({Key? key}) : super(key: key);

  @override
  _Sport1State createState() => _Sport1State();
}

class _Sport1State extends State<Sport1> {
  final videoURL = "https://www.youtube.com/watch?v=eakmeWlzlhs";

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
        appBar: AppBar(title: const Text("Sport Injury Recovery Exercises")),
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
                  "Five of the best home exercises for knee pain presented by a doctor of physical therapy. Perfect for beginners and those experiencing acute pain in their knee. Strengthen and stabilize your knee joint with 5 simple exercises for your quads, hamstrings, and hips.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 750,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/sports2");
                    },
                    child: Container(
                      width: 360,
                      height: 50,
                      alignment: Alignment.center,
                      color: Color.fromRGBO(255, 255, 255, 0.855),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Color.fromARGB(255, 24, 110, 208),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
