import 'package:flutter/material.dart';
import 'package:kasikla_project/bilgiler/fikirler.dart';


class Urunler extends StatefulWidget {
  const Urunler({Key? key}) : super(key: key);

  @override
  State<Urunler> createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> {

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
                        builder: (context) => Fikirler()));
              },
            ),
            title: Text(
                'Ürünlerimizin Görüntüleri', style: TextStyle(fontSize: 23)),
            backgroundColor: Colors.blueGrey,
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  GestureDetector(
                    onDoubleTap: () {
                      fiyatKutusu(1);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 20.0, right: 45.0, left: 45.0),
                      child: Image.asset('assets/images/bardak_1.jpg'),
                    ),
                  ),
                  Text('KUPA BARDAK', style: TextStyle(fontSize: 25),),
                  SizedBox(
                    height: 20,),

                  GestureDetector(
                    onDoubleTap: () {
                      fiyatKutusu(2);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0, right: 45.0, left: 45.0),
                      child: Image.asset('assets/images/bardak_2.jpg'),
                    ),
                  ),
                  Text('KAPAKLI KARTON BARDAK', style: TextStyle(fontSize: 25),),
                  SizedBox(
                    height: 20,),

                  GestureDetector(
                    onDoubleTap: () {
                      fiyatKutusu(3);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0, right: 45.0, left: 45.0),
                      child: Image.asset('assets/images/canta.jpg'),
                    ),
                  ),
                  Text('ÇANTA', style: TextStyle(fontSize: 25),),
                  SizedBox(
                    height: 20,),

                  GestureDetector(
                    onDoubleTap: () {
                      fiyatKutusu(4);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0, right: 45.0, left: 45.0),
                      child: Image.asset('assets/images/kavanoz.jpg'),
                    ),
                  ),
                  Text('CAM KAVANOZ', style: TextStyle(fontSize: 25),),
                  SizedBox(
                    height: 20,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void fiyatKutusu(int secim) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            title: Text(urunAd[secim-1]),
            content: Text(urunFiyat[secim-1]),
          );
        }
        );
  }

  List<String> urunAd=['Kupa Bardak','Karton Bardak','Çanta','Cam Kavanoz'];
  List<String> urunFiyat=['Fiyat: 20 TL.','Fiyat: 5 TL.','Fiyat: 2,5 TL.','Fiyat: 10 TL.'];



}
