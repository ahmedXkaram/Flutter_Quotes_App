import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int index = 0;

  List quotes = [
    "Stay Hungry. Stay Foolish.",
    "Good Artists Copy, Great Artists Steal.",
    "Argue with idiots, and you become an idiot.",
    "Be yourself; everyone else is already taken.",
    "Simplicity is the ultimate sophistication."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[200],
        title: Text(
          'Quotes',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 350.0,
              height: 320.0,
              margin: EdgeInsets.symmetric(vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.greenAccent[200],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Center(
                child: Text(
                  quotes[index % quotes.length],
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 2.3,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.greenAccent[100],
                ),
                icon: Icon(Icons.wb_sunny),
                label: Text('Inspire me!'),
                onPressed: showQuote,
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void showQuote() {
    setState(() {
      index++;
    });
  }
}
