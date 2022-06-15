import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kasikla_project/bilgiler/fikirler.dart';
import 'package:kasikla_project/yiyecekler/icecektarifi.dart';
import 'package:kasikla_project/yiyecekler/tatlitarifi.dart';
import 'package:kasikla_project/yiyecekler/yemektarifi.dart';
import 'package:lottie/lottie.dart';
import 'ekranlar/anasayfa.dart';

class Tarifler extends StatefulWidget {
  const Tarifler({Key? key}) : super(key: key);

  @override
  State<Tarifler> createState() => _TariflerState();
}
class _TariflerState extends State<Tarifler> {

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference siparisFaturalariRef = FirebaseFirestore.instance.collection('siparisFaturalari');


  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Antonio'),
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text('Tarifler'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Fikirler()),
                );
              },
            ),
          ),

          //floatingActionButton:
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Yemek Tarifleri", style: TextStyle(color: Colors.white, fontSize: 25,),),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => YemekTarifi()));

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text("İçecek Tarifleri", style: TextStyle(color: Colors.white, fontSize: 25,),),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => IcecekTarifi()));

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text("Tatlı Tarifleri", style: TextStyle(color: Colors.white, fontSize: 25,),),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TatliTarifi()));

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),),
                ),
              ],
            ),
          ),
        ),

      ),

    );



  }
}