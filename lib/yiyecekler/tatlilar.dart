import 'package:flutter/material.dart';
import 'package:kasikla_project/ekranlar/sepet.dart';
import 'package:marquee/marquee.dart';
import '../ekranlar/anasayfa.dart';

List<String> tatliAdlari=['Pasta','Puding','Profiterol','Sütlaç','Kazandibi','Sufle'];
List<String> tatliAciklamalari=['Bol çikolatalı, leziz Pasta.','Çikolatalı Puding.','İçi krema dolu Profiterol.','Üstü nar gibi kızarmış Sütlaç.','Tavukgöğsü katılmamış Muhallebi Kazandibi.','İçi akışkan çikolata dolu Sufle.'];
List<String> girilenMetin=['','','','','',''];
List<String> girilenMetin2=['','','','','',''];
int b=0;
void sifirlaTatli(){
  b = girilenMetin.length;
  girilenMetin.replaceRange(0, b, girilenMetin2);
}


class tatlilar extends StatefulWidget {
  const tatlilar({Key? key}) : super(key: key);

  @override
  _tatlilarState createState() => _tatlilarState();
}
class _tatlilarState extends State<tatlilar> {
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
            title: Text('Tatlılar', style: TextStyle(fontSize: 30)),
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
                      text: 'Sepete eklemek için, istediğiniz tatlının yanındaki \'Ekle\' butonuna basınız.',
                    ),
                  ),
                ),
                Expanded(
                  flex: 83,
                  child: ListView.builder(
                      itemCount: tatliAdlari.length,
                      itemBuilder: (context, int index) {
                        return ListTile(
                          tileColor: Colors.white,
                          leading: Image.asset('assets/images/tatli_${index+1}.png',width: 135, height: 135),
                          title: Text(tatliAdlari[index]),
                          subtitle: Text(tatliAciklamalari[index]),
                          trailing: IconButton(
                            iconSize: 50,
                            icon: Icon(Icons.add_circle),
                            color: Colors.blueGrey,
                            highlightColor: Colors.white,

                            onPressed: () {

                              setState(() {

                                girilenMetin[index] = tatliAdlari[index];

                               // print(girilenMetin[index]);

                              }

                              );
                              sepeteTatliYolla();
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

class sepeteTatliYolla extends StatefulWidget {
    const sepeteTatliYolla({Key? key}) : super(key: key);

    @override
    _sepeteTatliYollaState createState() => _sepeteTatliYollaState();
  }
class _sepeteTatliYollaState extends State<sepeteTatliYolla> {
    @override
    Widget build(BuildContext context) {

      return Text(' ${girilenMetin} ');
    }
  }
