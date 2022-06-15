import 'package:flutter/material.dart';
import 'package:kasikla_project/elementler/urunler.dart';
import 'package:kasikla_project/tarifler.dart';
import 'package:marquee/marquee.dart';
import 'hakkinda.dart';
import '../elementler/tasarim.dart';

class Fikirler extends StatelessWidget {
  const Fikirler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Antonio'),
      home: SafeArea(
      child: Scaffold(backgroundColor: Colors.white,
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
                        builder: (context) => Hakkinda()));
              },
            ),
            title: Text('Fikirlerimiz', style: TextStyle(fontSize: 30)),
            backgroundColor: Colors.blueGrey,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: 20,
                  child: Marquee(
                    style: TextStyle(fontSize: 12),
                    blankSpace: 15.0,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    scrollAxis: Axis.horizontal,
                    text: 'Ürünlerin fotoğraflarına çift tıklayarak ayrıntılarına ulaşabilirsiniz.',
                  ),
                ),

                Column(children:
                [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 67, vertical: 20),),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Urunler()));
                    }, child: Text('Ürünler',style: TextStyle(color: Colors.white, fontSize: 25,),),),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 53, vertical: 20),),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Tasarim()));
                    }, child: Text('Tasarımlar',style: TextStyle(color: Colors.white, fontSize: 25,),),),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(horizontal: 67, vertical: 20),),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Tarifler()));
                    }, child: Text('Tarifler',style: TextStyle(color: Colors.white, fontSize: 25,),),),

                ],
                ),
                Container(
                  alignment: Alignment.topCenter,
                  height: 20,
                  child: Marquee(
                    style: TextStyle(fontSize: 12),
                    blankSpace: 15.0,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    scrollAxis: Axis.horizontal,
                    text: 'İpucu: Tasarımlar kısmında gizemli \'Gestures\'leri bulmayı deneyebilirsiniz. :) ',
                  ),
                ),

              ],
            ),
          ),
      ),
    ),
    );
  }
}


/*
Image.asset('assets/images/dis.jpg'),
                Container(
                  margin: EdgeInsets.all(15.0),
                  padding: EdgeInsets.only(left:9.0, right:5.0,bottom: 12.0),
                  child: Text(
                    'DIŞ MEKAN',
                    style: TextStyle(fontSize: 17),
                  ),
                )
*/