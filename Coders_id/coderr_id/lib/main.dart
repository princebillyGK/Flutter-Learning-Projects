import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NinjaCard()
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int coderLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Coder ID Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[300],
          onPressed: () => setState(() {
            ++coderLevel;
          })
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.jpg'),
                    radius: 40,
                  ),
                ),
                SizedBox(
                 height: 10,
                ),
                Divider(
                  height: 60,
                  color: Colors.grey[500],
                ),
                Text(
                    'Name',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Prince Billy Graham Karmoker',
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    )
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                    'Current programming level',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    )
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    '$coderLevel',
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    )
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.grey[400],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                        'princebillyGK@gmail.com',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18,
                          letterSpacing: 1.0,
                        )
                    )
                  ],
                )
              ],
            )
        )
    );
  }
}

