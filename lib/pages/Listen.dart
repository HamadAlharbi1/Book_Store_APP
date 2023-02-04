import 'package:flutter/material.dart';
import 'package:project_2/modols/data.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import 'playpage.dart';
import 'settings_page.dart';

class Listen extends StatefulWidget {
  final Product value; // object

  const Listen({super.key, required this.value});
  @override
  State<Listen> createState() => _ListenState();
}

class _ListenState extends State<Listen> {
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

  // construter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                  const Color.fromARGB(255, 24, 24, 25).withOpacity(0.8),
                  const Color.fromARGB(255, 24, 24, 24)
                ])),
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 800,
                  child: ListView(children: [
                    Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                          const Color.fromARGB(255, 24, 24, 25).withOpacity(0.8),
                          const Color.fromARGB(255, 24, 24, 24)
                        ])),
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
                                              decoration: const BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(12))),
                                              clipBehavior: Clip.hardEdge,
                                              child: SizedBox(
                                                  width: 100, height: 300, child: NewWidget(controller: _controller)))),
                                      Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                                        Text('كتاب العادات الذرية', style: TextStyle(color: Colors.blue, fontSize: 32))
                                      ])
                                    ]),
                                    Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                                      Padding(
                                          padding: const EdgeInsets.all(24),
                                          child: Container(
                                              decoration: const BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(12))),
                                              clipBehavior: Clip.hardEdge,
                                              child: SizedBox(
                                                  width: 100, height: 300, child: NewWidget(controller: _c2)))),
                                      Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                                        Text('الكتاب المسموع: افرض حضورك',
                                            style: TextStyle(color: Colors.blue, fontSize: 32))
                                      ])
                                    ]),
                                    Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                                      Padding(
                                          padding: const EdgeInsets.all(24),
                                          child: Container(
                                              decoration: const BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(12))),
                                              clipBehavior: Clip.hardEdge,
                                              child: SizedBox(
                                                  width: 100, height: 300, child: NewWidget(controller: _c3)))),
                                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                        TextButton(
                                            onPressed: () {},
                                            child: const Text('الأب الغني والأب الفقير',
                                                style: TextStyle(color: Colors.blue, fontSize: 32)))
                                      ])
                                    ])
                                  ])),
                          const SizedBox(height: 26),
                          Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(44, 241, 241, 241),
                                  border: Border.all(color: const Color.fromARGB(138, 0, 0, 0), width: .2),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(children: [
                                const SizedBox(height: 45),
                                Container(
                                    padding: const EdgeInsets.all(8),
                                    margin: const EdgeInsets.all(24),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                      IconButton(
                                          onPressed: () => _pageC.previousPage(
                                              duration: const Duration(seconds: 1), curve: Curves.easeIn),
                                          icon: const Icon(Icons.fast_rewind, size: 40, color: Colors.white)),
                                      Container(
                                          alignment: Alignment.center,
                                          child: IconButton(
                                              onPressed: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(builder: (context) => const SettingsPage()));
                                              },
                                              icon: const Icon(Icons.settings,
                                                  size: 40, color: Color.fromARGB(255, 151, 151, 151)))),
                                      IconButton(
                                          onPressed: () => _pageC.nextPage(
                                              duration: const Duration(seconds: 1), curve: Curves.easeIn),
                                          icon: const Icon(Icons.fast_forward_sharp, size: 40, color: Colors.white))
                                    ])),
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      size: 40,
                                      color: Color.fromARGB(255, 151, 151, 151),
                                    ))
                              ])),
                          const SizedBox(
                            height: 32,
                          )
                        ]))
                  ])),
              const SizedBox(height: 350)
            ]))
      ]),
    );
  }
}
