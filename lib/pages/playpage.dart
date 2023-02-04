import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../contents/playcard.dart';

class Playpage extends StatefulWidget {
  const Playpage({super.key});
  static const Mycolor = Color.fromARGB(184, 232, 229, 229);
  static const Playbackground = Color.fromARGB(53, 113, 114, 113);

  @override
  State<Playpage> createState() => _PlaypageState();
}

class _PlaypageState extends State<Playpage> {
  final _controller = YoutubePlayerController.fromVideoId(
      videoId: 'DGVoQBr9Dq4', params: const YoutubePlayerParams(showFullscreenButton: true), autoPlay: false);
  final _c2 = YoutubePlayerController.fromVideoId(
      videoId: 'DGVoQBr9Dq4', params: const YoutubePlayerParams(showFullscreenButton: true), autoPlay: false);
  final _c3 = YoutubePlayerController.fromVideoId(
      videoId: 'kz_9J3VST_Y', params: const YoutubePlayerParams(showFullscreenButton: true), autoPlay: false);

  final _pageC = PageController(initialPage: 2);

  @override
  void dispose() {
    _controller.close();
    _c2.close();
    _c3.close();
    _pageC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                const Color.fromARGB(255, 24, 24, 25).withOpacity(0.8),
                const Color.fromARGB(255, 24, 24, 24),
              ]),
            ),
            child: Column(children: [
              const SizedBox(height: 20),
              SizedBox(
                  width: 400,
                  height: 400,
                  child: PageView(
                      scrollDirection: Axis.horizontal,
                      controller: _pageC,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                          Padding(
                              padding: const EdgeInsets.all(24),
                              child: Container(
                                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12))),
                                  clipBehavior: Clip.hardEdge,
                                  child: SizedBox(width: 100, height: 300, child: NewWidget(controller: _controller)))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'كتاب العادات الذرية',
                                style: TextStyle(color: Colors.blue, fontSize: 32),
                              ),
                            ],
                          )
                        ]),
                        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                          Padding(
                              padding: const EdgeInsets.all(24),
                              child: Container(
                                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12))),
                                  clipBehavior: Clip.hardEdge,
                                  child: SizedBox(width: 100, height: 300, child: NewWidget(controller: _c2)))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'الكتاب المسموع: افرض حضورك',
                                style: TextStyle(color: Colors.blue, fontSize: 32),
                              ),
                            ],
                          )
                        ]),
                        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                          Padding(
                              padding: const EdgeInsets.all(24),
                              child: Container(
                                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12))),
                                  clipBehavior: Clip.hardEdge,
                                  child: SizedBox(width: 100, height: 300, child: NewWidget(controller: _c3)))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'الأب الغني والأب الفقير',
                                  style: TextStyle(color: Colors.blue, fontSize: 32),
                                ),
                              ),
                            ],
                          )
                        ])
                      ])),

              // const text(Mycolor: Playpage.Mycolor),
              const SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () => _pageC.previousPage(duration: const Duration(seconds: 1), curve: Curves.easeIn),
                      icon: const Icon(
                        Icons.fast_rewind,
                        size: 40,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 32,
                  ),
                  IconButton(
                      onPressed: () => _pageC.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeIn),
                      icon: const Icon(
                        Icons.fast_forward_sharp,
                        size: 40,
                        color: Colors.white,
                      )),
                ],
              ),

              const play_card(Playbackground: Playpage.Playbackground, Mycolor: Playpage.Mycolor),
            ]),
          ),
        ]),
      ),
      backgroundColor: const Color.fromARGB(255, 24, 24, 24),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required YoutubePlayerController controller,
  })  : _controller = controller,
        super(key: key);

  final YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(controller: _controller, aspectRatio: 16 / 9);
  }
}
