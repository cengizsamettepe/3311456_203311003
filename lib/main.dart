import 'package:flutter/material.dart';
import 'package:kasikla_project/anasayfa.dart';
import 'package:kasikla_project/beniminfo.dart';
import 'package:kasikla_project/hakkinda.dart';
import 'package:kasikla_project/icecekler.dart';
import 'package:kasikla_project/satinalma.dart';
import 'package:kasikla_project/sepet.dart';
import 'package:kasikla_project/tatlilar.dart';
import 'package:kasikla_project/uyginfo.dart';
import 'package:kasikla_project/yemekler.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Antonio'),


    initialRoute: "/",
    routes: {
      "/": (context) => kasiklaUygGiris(),
      "/hakkinda": (context) => Hakkinda(),
      "/anasayfa": (context) => AnaSayfa(),
      "/beniminfo": (context) => myinfo(),
      "/uyginfo": (context) => appinfo(),
      "/yemekler": (context) => yemekler(),
      "/icecekler": (context) => icecekler(),
      "/tatlilar": (context) => tatlilar(),
      "/sepet": (context) => sepet(),
      "/satinalma": (context) => satinalma(),
    },
    ),
  );
}

class kasiklaUygGiris extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 10,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 40.0),
                    child: Image.asset('assets/images/kasikla.png'),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    child: Text("kaşıkla!", style: TextStyle(color: Colors.white, fontSize: 25,),),
                    onPressed: () {

                      //debugPrint("Butona tıklandı");
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AnaSayfa()));

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25,),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    child: Text("hakkında!", style: TextStyle(color: Colors.white, fontSize: 25,),),
                    onPressed: () {

                      //debugPrint("2. Butona tıklandı");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Hakkinda()));

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      );

  }
}


