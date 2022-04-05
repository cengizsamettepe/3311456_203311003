import 'package:flutter/material.dart';
import 'uyginfo.dart';
import 'main.dart';
import 'beniminfo.dart';

class Hakkinda extends StatelessWidget {
  const Hakkinda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Antonio'),
      home: SafeArea(child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 50,
          leading: IconButton(
            iconSize: 20,
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            highlightColor: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => kasiklaUygGiris()));
            },
          ),
          title: Text('Hakkında', style: TextStyle(fontSize: 30)),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Uygulama Hakkında", style: TextStyle(color: Colors.white, fontSize: 25,),),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => appinfo()));

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text("Geliştirici Hakkında", style: TextStyle(color: Colors.white, fontSize: 25,),),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => myinfo()));

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

//
