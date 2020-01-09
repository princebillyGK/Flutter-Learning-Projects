import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

void main() => runApp(Test7());

class Test1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Designing course today',
      home: Scaffold(
        body: SafeArea(
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text('Call'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.navigation,
                        color: Colors.blue,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text('Route'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text('Share'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class Test2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Material App demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter layout demo'),
          ),
          body: Center(
            child: Text('Hello World'),
          ),
        ));
  }
}

class Test3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
            child: Text('Hello World',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 32, color: Colors.black87))));
  }
}

class Test4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Row and Column Implementation',
        home: Scaffold(
            body: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      color: Colors.blue[100],
                      child: Text('Strawberry Palova'),
                    ),
                    Container(
                      color: Colors.blue[100],
                      width: 30,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                      ),
                    ),
                    Container(
                      color: Colors.blue[100],
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          ),
                          Text('178 Reviews'),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.blue[100],
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Icon(Icons.kitchen),
                              Text('Prep'.toUpperCase()),
                              Text('25 minute'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Image.network(
                    'https://images.unsplash.com/photo-1516054575922-f0b8eeadec1a?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80'),
              ],
            )));
  }
}

//class Test5 extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//        title: 'Row and column',
//        home: Scaffold(
//          body: Row(
//            children: <Widget>[
//              Image.asset('assets/image1.jpg'),
//              Image.asset('assets/image2.jpg'),
//              Image.asset('asset/image3.jpg')
//            ],
//          ),
//        ));
//  }
//}

//class Test6 extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//        title: 'Row and column',
//        home: Scaffold(
//          body: Row(
//            children: <Widget>[
//              Expanded(
//                  flex: 1,
//                  child: Image.asset('assets/image1.jpg'
//                  )
//              ),
//              Expanded(
//                  flex: 2,
//                  child: Image.asset('assets/image2.jpg'
//                  )
//              ),
//              Expanded(
//                  flex: 1,
//                  child: Image.asset('assets/image3.jpg'
//                  )
//              ),
//            ],
//          ),
//        ));
//  }
//}

class Test7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Icon Widget',
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(child: leftColumn),
        )
    );
  }
}

var star = Row(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    Icon(
        Icons.star,
        color: Colors.teal[400]
    ),
    Icon(
        Icons.star,
        color: Colors.teal[400]
    ),
    Icon(
        Icons.star,
        color: Colors.teal[400]
    ),
    Icon(
      Icons.star,
      color: Colors.white,
    ),
    Icon(
        Icons.star,
        color: Colors.white
    ),
  ],
);

var ratings = Container(
    padding: EdgeInsets.all(20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        star,
        Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            )
        )
      ],

    )
);


final descTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 18,
  height: 2,
);

final iconList = DefaultTextStyle.merge(
    style: descTextStyle,
    child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.kitchen, color: Colors.green[500]),
                Text('PREP:'),
                Text('25 min')
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.timer, color: Colors.green[500]),
                Text('COOK:'),
                Text('1 hr')
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.restaurant, color: Colors.green[500]),
                Text('FEEDS:'),
                Text('25 min')
              ],
            ),

          ],
        )
    )
);

final titleText = Text(
    'Strawberry Palova',
    style: TextStyle(
      color: Colors.blue[500],
      fontSize: 26,
    )
);

final subTitle = Text(
  lipsum.createWord(numWords: 50),
  textAlign: TextAlign.center,
);

final leftColumn = Container(
    padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
    child: DefaultTextStyle.merge(
      style: TextStyle(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Image.asset('assets/pavlova.jpeg'),
          Container(
              padding: EdgeInsets.all(30),
              child: titleText
          ),
          subTitle,
          ratings,
          iconList,
          _buildImageColumn(),
        ],
      ),
    )
);

Widget _buildImageColumn() => Container(
    decoration: BoxDecoration(
      color: Colors.black26,
    ),
    child: Column(
      children: <Widget>[
        _buildImageRow(1),
        _buildImageRow(3),
      ],
    )
);
Widget _buildDecoratedImage(int imageIndex) => Expanded(
    child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            const Radius.circular(8),
          ),
        ),
        margin: const EdgeInsets.all(4),
        child: Container(
            child: Image.network(
                'http://placehold.jp/150x150.png?text=$imageIndex'
            ),
        ),
    )
);

Widget _buildImageRow(int imageIndex) => Row(
  children: <Widget>[
    _buildDecoratedImage(imageIndex),
    _buildDecoratedImage(imageIndex + 1),
  ],
);

Widget _buildGrid() => GridView.extent(
  maxCrossAxisExtent: 150,
  paddin: const EdgeInsets.all(4),
  mainAxisSpacing: 4,
  crossAxisSpacing: 4,
  children: _buildGridTitleList();
  ],
)
