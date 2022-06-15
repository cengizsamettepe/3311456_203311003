import 'package:flutter/material.dart';
import 'package:kasikla_project/ekranlar/sepet.dart';
import 'package:marquee/marquee.dart';
import '../ekranlar/anasayfa.dart';

List<String> yemekAdlari=['Çorba','Lahmacun','Pilav','Etli Ekmek','Tavuk Döner','Pizza','Hamburger','Köfte','Çiğköfte'];
List<String> yemekAciklamalari=['Sıcacık Mercimek Çorbası.','Bol malzemeli Lahmacun.','Pirinç Pilavı.','Bol malzemeli Etli Ekmek.','Hatay Usulü Döner.','Bol malzemeli Pizza.','2 köfteli Hamburger.','Akçaabat Köftesi.','Acısı tam ayarında Çiğköfte.'];
List<String> girilenMetin=['','','','','','','','',''];
List<String> girilenMetin2=['','','','','','','','',''];
List<String> girilenAdet=['','','','','','','','',''];
int b=0;

void sifirlaYemek(){
  b = girilenMetin.length;
  girilenMetin.replaceRange(0, b, girilenMetin2);
}

class yemekler extends StatefulWidget {
  const yemekler({Key? key}) : super(key: key);

  @override
  _yemeklerState createState() => _yemeklerState();
}
class _yemeklerState extends State<yemekler> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Antonio'),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              IconButton(
                  icon: Icon(Icons.shopping_basket),
                         onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sepet()));
        },
              ),
            ],
            leadingWidth: 50,
            leading: IconButton(
              iconSize: 20,
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              highlightColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AnaSayfa()));
              },
            ),
            title: Text('Yemekler', style: TextStyle(fontSize: 30)),
            backgroundColor: Colors.blueGrey,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.black12,
                    child: Marquee(
                      style: TextStyle(fontSize: 12),
                      blankSpace: 15.0,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      scrollAxis: Axis.horizontal,
                      text: 'Sepete eklemek istediğiniz yemeğin yanındaki \'Ekle\' butonuna basınız.',
                    ),
                  ),
                ),

                Expanded(
                  flex: 83,
                  child: ListView.builder(
                      itemCount: yemekAdlari.length,
                      itemBuilder: (context, int index) {
                        return ListTile(
                          tileColor: Colors.white,
                          leading: Image.asset('assets/images/yemek_${index+1}.png',width: 135, height: 135),
                          title: Text(yemekAdlari[index]),
                          subtitle: Text(yemekAciklamalari[index]),
                          trailing: IconButton(
                            iconSize: 50,
                            icon: Icon(Icons.add_circle),
                            color: Colors.blueGrey,
                            highlightColor: Colors.white,

                            onPressed: () {

                              setState(() {
                                girilenMetin[index] = yemekAdlari[index];
                                //print(girilenMetin[index]);
                              }
                              );
                              sepeteYemekiYolla();

                            },
                          ),
                          contentPadding: EdgeInsets.only(top: 50.0, bottom: 52.0),
                        );
                      }
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

class sepeteYemekiYolla extends StatefulWidget {
  const sepeteYemekiYolla({Key? key}) : super(key: key);
  @override
  _sepeteYemekiYollaState createState() => _sepeteYemekiYollaState();
}
class _sepeteYemekiYollaState extends State<sepeteYemekiYolla> {
  @override
  Widget build(BuildContext context) {

    return Text(' ${girilenMetin} ');

  }
}
