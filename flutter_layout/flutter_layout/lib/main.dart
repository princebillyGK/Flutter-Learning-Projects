import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Visiting Card',
      home: VistingCard(),
    );
  }
}

class VistingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                      Icons.account_circle,
                      size: 60
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Prince Billy Graham',
                      style: Theme.of(context).textTheme.headline,
                    ),
                    Text(
                        'Experienced Android Developer',
                        style: TextStyle(
                            fontSize: 18
                        )
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  '123 Main Street',
                ),
                Text(
                    '(+88) 01521432424'
                ),
              ],
            ),
            SizedBox(
                height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.accessibility,
                ),
                Icon(
                  Icons.timer,
                ),
                Icon(
                  Icons.phone_android,
                ),
                Icon(
                  Icons.phone_iphone
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

