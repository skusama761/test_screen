// import 'dart:html';

import 'package:flutter/material.dart';

import 'thirdPage.dart';

class Button2 extends StatelessWidget {
  const Button2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: const Text('Shop more'),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.shopping_bag),
                Text('Checkout'),
              ],
            ),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdPage()),
              ),
            },
          ),
        ],
      ),
    );
  }
}
