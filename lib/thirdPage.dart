import 'dart:ui';

import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Credit Card Checkout',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 20),
          Image.network(
              'https://www.visa.co.in/dam/VCOM/regional/ap/india/global-elements/images/in-visa-gold-card-498x280.png'),
          const SizedBox(height: 20),
          Container(
            width: 300,
            child: const TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Credit Card Number',
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 300,
            child: const TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Card Holder\'s Name',
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  // optional flex property if flex is 1 because the default flex is 1
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Expiry Date',
                        labelStyle: TextStyle(color: Colors.grey[400])),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  // optional flex property if flex is 1 because the default flex is 1
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'CVV',
                        labelStyle: TextStyle(color: Colors.grey[400])),
                  ),
                ),
              ],
            ),
          ),
          CheckboxListTile(
            title: Text("save card for future transactions"),
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Total : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text('USD 900'),
              ElevatedButton(
                child: const Text('Proceed to Pay'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
