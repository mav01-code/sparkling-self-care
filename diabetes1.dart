import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Diabetes1 extends StatefulWidget {
  const Diabetes1({Key? key}) : super(key: key);

  @override
  _Diabetes1State createState() => _Diabetes1State();
}

class _Diabetes1State extends State<Diabetes1> {
  final videoURL = "https://www.youtube.com/watch?v=OpSyWP7OL6s";

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
        appBar:
            AppBar(title: const Text("Diabetes exercise to lower blood sugar")),
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
                            Navigator.of(context).pushNamed("/home");
                          },
                          child: Container(
                            width: 280,
                            height: 50,
                            alignment: Alignment.center,
                            color: Color.fromRGBO(4, 145, 25, 0.856),
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          )),
                      const PlaybackSpeedButton(),
                    ]),
              ],
            ),
          ),
        ));
  }
}
