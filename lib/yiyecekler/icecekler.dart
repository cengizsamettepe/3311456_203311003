import 'package:flutter/material.dart';
import 'package:kasikla_project/ekranlar/anasayfa.dart';
import 'package:marquee/marquee.dart';
import 'package:kasikla_project/ekranlar/sepet.dart';

List<String> icecekAdlari=['Kola','Gazoz','Ayran','Su','Türk Kahvesi','Şalgam','İcetea','Milkshake'];
List<String> icecekAciklamalari=['Buz gibi Kola.','Buz gibi Gazoz.','Tam kıvamında ev yapımı Ayran.','Normal Su, ekstra özelliği yok :). ','40 yıl hatrı olan Türk Kahvesi.','Acısı tam ayarında Şalgam.','Şeftalili Şoğuk Çay.','Çikolatalı Milkshake.'];
List<String> girilenMetin=['','','','','','','',''];
List<String> girilenMetin2=['','','','','','','',''];
int b=0;
void sifirlaIcecek(){
  b = girilenMetin.length;
  girilenMetin.replaceRange(0, b, girilenMetin2);
}



class icecekler extends StatefulWidget {
  const icecekler({Key? key}) : super(key: key);

  @override
  _iceceklerState createState() => _iceceklerState();
}
class _iceceklerState extends State<icecekler> {



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
            title: Text('İçecekler', style: TextStyle(fontSize: 30)),
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
                      text: 'Sepete eklemek istediğiniz içeceğin yanındaki \'Ekle\' butonuna basınız.',
                    ),
                  ),
                ),

                Expanded(
                  flex: 83,
                  child: ListView.builder(
                      itemCount: icecekAdlari.length,
                      itemBuilder: (context, int index) {
                        return ListTile(
                          tileColor: Colors.white,
                          leading: Image.asset('assets/images/icecek_${index+1}.png',width: 135, height: 135),
                          title: Text(icecekAdlari[index]),
                          subtitle: Text(icecekAciklamalari[index]),
                          trailing: IconButton(
                            iconSize: 50,
                            icon: Icon(Icons.add_circle),
                            color: Colors.blueGrey,
                            highlightColor: Colors.white,

                            onPressed: () {

                              setState(() {

                                girilenMetin[index] = icecekAdlari[index];
                                //print(girilenMetin[index]);

                              }

                              );

                              sepeteIcecekYolla();
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
//////////////////////////////////////////
class sepeteIcecekYolla extends StatefulWidget {
  const sepeteIcecekYolla({Key? key}) : super(key: key);

  @override
  _sepeteIcecekYollaState createState() => _sepeteIcecekYollaState();
}
class _sepeteIcecekYollaState extends State<sepeteIcecekYolla> {
  @override
  Widget build(BuildContext context) {

    return Text(' ${girilenMetin} ');
  }
  }


