import 'package:flutter/material.dart';

import 'button2.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AlertDialog(
      content: Container(
        height: 400,
        child: Column(
          children: [
            Image.network(
                'https://images.unsplash.com/photo-1600294037681-c80b4cb5b434?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YWlycG9kc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60'),
            const SizedBox(
              width: 10,
              height: 10,
            ),
            const Text('Apple Airpods 2 (2nd Generation)'),
            const SizedBox(
              width: 10,
              height: 10,
            ),
            ElevatedButton(
              child: const Text('74 OMR'),
              onPressed: () {},
            ),
            const SizedBox(
              width: 10,
              height: 10,
            ),
            const Flexible(
              child: Text(
                'The item has been added to your shopping bag, you can checkout now or shop for some more products',
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
              ),
            ),
            SizedBox(height: 20),
            const Button2()
          ],
        ),
      ),
    ));
  }
}
