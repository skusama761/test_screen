// ignore_for_file: use_key_in_widget_constructors

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:test_screen/button.dart';
// import 'package:test_screen/popup.dart';
import 'package:test_screen/recSwipe.dart';
import './infoText.dart';
import './favSwipe.dart';
import 'secondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Screens',
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('TEST'),
        // ),
        body: ListView(
          children: [
            Container(
              color: const Color.fromARGB(255, 172, 216, 240),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.topCenter,
                    fit: StackFit.loose,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: double.infinity,
                        child: Image.network(
                          'https://images.unsplash.com/photo-1496614932623-0a3a9743552e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80',
                          fit: BoxFit.cover,
                        ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              // topLeft: Radius.circular(20),
                              // topRight: Radius.circular(20),
                              ),
                        ),
                      ),
                      const Positioned(
                        top: 90,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/flagged/photo-1553642618-de0381320ff3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 70),
                  const Text(
                    'Simon Cottrell',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 64, 109, 131),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Button(),
                  const SizedBox(height: 20),
                  const Info(),
                  const SizedBox(height: 20),
                  const Text(
                    'Favourite Stores',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Fav(),
                  Builder(builder: (context) {
                    return TextButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondPage()),
                        ),
                      },
                      child: const Text(
                        'Recently Purchased',
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  }),
                  // GestureDetector(
                  //   child: const Text('Recently Purchased new'),
                  //   onTap: () async {
                  //     await showDialog(
                  //         context: context, builder: (_) => popup());
                  //   },
                  // ),
                  const Rec(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
