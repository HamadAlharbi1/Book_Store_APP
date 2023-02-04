import 'package:flutter/material.dart';

class text extends StatelessWidget {
  const text({
    Key? key,
    required this.Mycolor,
  }) : super(key: key);
  final Color Mycolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 300,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Do Nothing', style: TextStyle(color: Mycolor)),
        const SizedBox(height: 8),
        Text('How to Break Away from Overworking, Overdoing, and Underliving ',
            style: TextStyle(color: Mycolor, fontSize: 20), maxLines: 2),
        const SizedBox(height: 8),
        Text('Kindle Edition', style: TextStyle(color: Mycolor)),
        const SizedBox(height: 8),
        Text(
          'How to Break Away from Overworking, Overdoing, and Underliving',
          style: TextStyle(color: Mycolor),
          maxLines: 2,
        ),
      ]),
    );
  }
}
