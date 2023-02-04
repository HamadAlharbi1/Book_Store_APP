import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';
import 'package:project_2/modols/data.dart';

class reading_page extends StatelessWidget {
  final Product value;
  const reading_page({Key? key, required this.value}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
            const Color.fromARGB(255, 0, 54, 95).withOpacity(0.8),
            const Color.fromARGB(255, 68, 68, 68),
          ]),
        ),
        child: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            const SizedBox(
              height: 32,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(102, 220, 220, 219),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(102, 220, 220, 219), borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            value.name,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 23, 23, 23), fontSize: 20, fontWeight: FontWeight.bold),
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 800,
                      child: HtmlWidget(
                        '<iframe src=${value.PDfurl}></iframe>',
                        factoryBuilder: () => MyWidgetFactory(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 151, 151, 151))),
          ],
        ),
      ),
    );
  }
}

class MyWidgetFactory extends WidgetFactory with WebViewFactory {}
