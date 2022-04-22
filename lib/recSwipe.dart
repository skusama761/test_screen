import 'package:flutter/material.dart';

class Rec extends StatelessWidget {
  const Rec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 250.0,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            child: Card(
              elevation: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1614521084980-811d04f6c6cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                    fit: BoxFit.fill,
                  ),
                  const Text('Muscat Grand Mall')
                ],
              ),
            ),
          ),
          Container(
            width: 160.0,
            child: Card(
              elevation: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1597597975996-7d6cc8edbf73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fG1hbGx8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                    fit: BoxFit.fill,
                  ),
                  const Text('Dubai Mall'),
                ],
              ),
            ),
          ),
          Container(
            width: 160.0,
            child: Card(
              elevation: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1576615836125-8a98480c2acd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                    fit: BoxFit.fill,
                  ),
                  const Text('Mall of Oman')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
