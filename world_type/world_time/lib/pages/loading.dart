import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import  'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  setupWorldTime () async {
    WorldTime instance = WorldTime(
      location: 'Dhaka',
      url: 'Asia/Dhaka'
    );
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location' : instance.location,
      'time' : instance.time,
      'isDayTime' : instance.isDayTime,
      'url' : instance.url
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Center(
          child:SpinKitChasingDots(
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  color: index.isEven ? Colors.grey : Colors.blue,
                ),
              );
            },
          ),
        )
      ),
    );
  }
}
