import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Sport2 extends StatefulWidget {
  const Sport2({Key? key}) : super(key: key);

  @override
  _Sport2State createState() => _Sport2State();
}

class _Sport2State extends State<Sport2> {
  final videoURL = "https://www.youtube.com/watch?v=JQz-2nkt-c8";

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
        appBar: AppBar(title: const Text("Knee Pain Recovery")),
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
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/paralysis2");
                        },
                        child: Text("Next"),
                      ),
                      const PlaybackSpeedButton(),
                    ]),
              ],
            ),
          ),
        ));
  }
}
