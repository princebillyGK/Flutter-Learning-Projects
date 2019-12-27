import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data;


  @override
  Widget build(BuildContext context) {
    data??= ModalRoute.of(context).settings.arguments;
    print (data);
    //data['isDayTime'] = false;
    String bgImage = data['isDayTime'] ? 'day.jpeg' : 'night.jpeg';
    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/$bgImage'
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                color: data['isDayTime']? Colors.white.withOpacity(0.8): Colors.white.withOpacity(0.3),
                child: Column(
                  children: <Widget>[
                    FlatButton.icon(
                      onPressed: () async {
                        dynamic result = await Navigator.pushNamed(context, '/location');
                        setState( () {
                          data = {
                            'time' : result['time'],
                            'location' : result['location'],
                            'isDayTime' : result['isDayTime'],
                            'url' : result['url']
                          };
                        });
                      },
                      icon: Icon(
                          Icons.my_location,
                        color: Colors.red,
                      ),
                      label: Text(
                          'Edit Location',
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 20,
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          data['location'],
                          style: TextStyle(
                            fontSize: 28,
                            letterSpacing: 2.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text(
                        data['time'],
                        style: TextStyle(
                          fontSize: 60,
                        )
                    ),
                    Text(
                      data['url'],
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      '@princebillyGK',
                      style: TextStyle(
                        color: Colors.red
                      )
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

