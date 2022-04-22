import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('PREMIUM'),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            child: const Text('1235 POINTS'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
