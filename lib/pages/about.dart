import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
            const Color.fromARGB(242, 4, 69, 101).withOpacity(0.8),
            const Color.fromARGB(255, 24, 24, 24),
          ]),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(102, 220, 220, 219), borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'صفحة ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 23, 0, 87), fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Expanded(
                      child: Text(
                          ' تطبيق بسيط الهدف منه المساعده على القراءه أو الاستماع الى الكتب من خلال الكتب الالكترونيه والصوتيه.. كذلك ننشر هنا اقتباسات بسيطه لاشهر الكتاب والناشرين في محاولة للإستفاده من هذا الارث الباقي    ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 23, 0, 87), fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                          overflow: TextOverflow.clip),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  )
                ],
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
