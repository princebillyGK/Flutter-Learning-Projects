import 'package:flutter/material.dart';
import 'qoute.dart';

class QouteCard extends StatelessWidget {
  final Qoute qoute;
  final Function delete;
  QouteCard(this.qoute, this.delete);
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                qoute.content,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[800]
                ),
              ),
              Text(
                qoute.author,
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[800]
                ),
              ),
              FlatButton.icon(
                onPressed: delete,
                label: Text('Delete Qoute'),
                icon: Icon(Icons.delete),
                color: Colors.grey[300]
              )
            ],
          ),
        )
    );
  }
}
