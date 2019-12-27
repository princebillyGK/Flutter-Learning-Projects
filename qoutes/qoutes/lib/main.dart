import 'package:flutter/material.dart';
import 'qoute.dart';
import 'qoute_card.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: QouteList(),
));

class QouteList extends StatefulWidget {
  @override
  _QouteListState createState() => _QouteListState();
}

class _QouteListState extends State<QouteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Qoutes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: qoutes.map(
            (qoute) => QouteCard(qoute, () {
              setState(() {
                qoutes.remove(qoute);
              });
            }),
          ).toList(),
        )
    );
  }
}

List<Qoute> qoutes = [
  Qoute(content: "If you would convince a man that he does wrong, do right. But do not care to convince him. Men will believe what they see. Let them see.", author: "Prince"),
  Qoute(content: "Hide yourself in God, so when a man wants to find you he will have to go there first.", author: "Steve"),
  Qoute(content: "I would rather be an artist than a leader. Ironically, a leader has to follow the rules.", author: "Liam"),
];






