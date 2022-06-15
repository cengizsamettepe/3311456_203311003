import 'package:flutter/material.dart';
import 'package:kasikla_project/bilgiler/fikirler.dart';
import 'package:lottie/lottie.dart';


class Tasarim extends StatefulWidget {
  const Tasarim({Key? key}) : super(key: key);

  @override
  State<Tasarim> createState() => _TasarimState();
}

class _TasarimState extends State<Tasarim> {
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
            title: Text('Tasarım Görüntüleri', style: TextStyle(fontSize: 23)),
            backgroundColor: Colors.blueGrey,
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.,
                children: [

                  GestureDetector(
                    onTap: (){
                      gestureKutusu(1);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0, right: 45.0,left: 45.0),
                      child: Image.asset('assets/images/dis.jpg'),
                    ),
                  ),
                  Text('Dış Cephe Görüntüsü',style: TextStyle(fontSize: 19),),
                  SizedBox(height: 20,),

                  GestureDetector(
                    onLongPress:(){
                      gestureKutusu(2);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0, right: 45.0,left: 45.0),
                      child: Image.asset('assets/images/ic.jpg'),
                    ),
                  ),
                  Text('İç Cephe Görüntüsü',style: TextStyle(fontSize: 19),),
                  SizedBox(height: 20,),


                  GestureDetector(
                   onDoubleTap:(){

                     gestureKutusu(3);

                   },

                    child: Container(
                      margin: EdgeInsets.only(top: 20.0, right: 45.0,left: 45.0),
                      child: Image.asset('assets/images/pano_1.jpg'),
                    ),
                  ),
                  Text('Reklam Panosu',style: TextStyle(fontSize: 19),),
                  SizedBox(height: 20,),

                  GestureDetector(
                    onLongPress:(){
                    gestureKutusu(2);
                       },
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0, right: 45.0,left: 45.0),
                      child: Image.asset('assets/images/menu_1.jpg'),
                    ),
                  ),
                  Text('Masa Menüsü',style: TextStyle(fontSize: 19),),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void gestureKutusu(int secim) {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            //shape: CircleBorder(),
            title: Text(tasarimAd[secim-1]),
            content: Row(
              children: [
                Expanded(flex: 10,child: Text(gestureAd[secim-1],style: TextStyle(fontSize: 23),)),
                Expanded(flex: 2,child: Image.asset('assets/images/alkis.png'),)
              ],
            ),
          );
        }
    );
  }

  List<String> tasarimAd=['Dış Cephe','İç Cephe','Pano','Menü'];
  List<String> gestureAd=
  [
    '\'Touch (Tap) Gesture\' uygulandı. Tebrikler.',
    '\'Long Press Gesture\' uygulandı. Tebrikler.',
    '\'Double Tap Gesture\' uygulandı. Tebrikler.',
    '\'Long Press Gesture\' uygulandı. Tebrikler.',
  ];

}
