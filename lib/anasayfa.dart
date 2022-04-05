import 'package:flutter/material.dart';
import 'package:kasikla_project/icecekler.dart';
import 'package:kasikla_project/main.dart';
import 'package:kasikla_project/sepet.dart';
import 'package:kasikla_project/tatlilar.dart';
import 'package:kasikla_project/yemekler.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Antonio'),
      home: SafeArea(
        child: Scaffold(
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

            title: Text('Ana Sayfa'),
            backgroundColor: Colors.blueGrey,

          ),
          floatingActionButton: FloatingActionButton(
            tooltip: 'Sepet',
            backgroundColor: Colors.blueGrey,
            splashColor: Colors.black12,
            child: Icon(Icons.shopping_basket),
            onPressed: () {

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => sepet()));
            },

          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => yemekler()));
              }, child: Text('YEMEKLERİMİZ', style: TextStyle(color: Colors.white, fontSize: 25,),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 54, vertical: 20),),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => icecekler()));
              }, child: Text('İÇECEKLERİMİZ', style: TextStyle(color: Colors.white, fontSize: 25,),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 53, vertical: 20),),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => tatlilar()));
              }, child: Text('TATLILARIMIZ', style: TextStyle(color: Colors.white, fontSize: 25,),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  padding: EdgeInsets.symmetric(horizontal: 56, vertical: 20),),
              ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}

