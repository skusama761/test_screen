import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: const Flexible(
        child: Text(
          'I am nature loving business professional with a huge love for gadgets for increased productivity at the workplace. I love shopping for gadgets and also ocasionally enjoy reviewing and tearing them down as well',
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
          maxLines: 5,
        ),
      ),
    );
  }
}
