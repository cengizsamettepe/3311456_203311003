import 'package:flutter/material.dart';
import 'package:kasikla_project/anasayfa.dart';
import 'package:kasikla_project/icecekler.dart';
import 'package:kasikla_project/satinalma.dart';
import 'package:kasikla_project/tatlilar.dart';
import 'package:kasikla_project/yemekler.dart';
import 'package:marquee/marquee.dart';


class sepet extends StatefulWidget {
  const sepet({Key? key}) : super(key: key);

  @override
  State<sepet> createState() => _sepetState();
}

class _sepetState extends State<sepet> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Antonio'),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnaSayfa()),
                  );
                }),
          ],
          backgroundColor: Colors.blueGrey,
          title: Text('SEPET'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Ödeme İşlemi',
          backgroundColor: Colors.blueGrey,
          splashColor: Colors.black12,
          child: Icon(Icons.credit_card),
          onPressed: () {

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => satinalma()));


          },
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.black12,
                  child: Marquee(
                    style: TextStyle(fontSize: 12),
                    blankSpace: 15.0,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    scrollAxis: Axis.horizontal,
                    text: 'Sepetteki ürünleri almak için, sağ alttaki \'Ödeme\' butonuna basınız.',
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: ListTile(

                  tileColor: Colors.white,
                  leading: Icon(Icons.fastfood_outlined,size: 35.0),
                  title: Text('Eklediğiniz Yemekler', style: TextStyle(fontSize: 25),),
                  subtitle: sepeteYemekiYolla(),

                  trailing: IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.delete),
                    color: Colors.blueGrey,
                    highlightColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        sifirlaYemek();
                      }
                      );
                    },
                  ),
                  contentPadding: EdgeInsets.only(top: 50.0, bottom: 52.0),
                ),
              ),
              Expanded(
                flex: 7,
                child: ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.emoji_food_beverage,size: 35.0),
                  title: Text('Eklediğiniz İçecekler', style: TextStyle(fontSize: 25),),
                  subtitle: sepeteIcecekYolla(),
                  trailing: IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.delete),
                    color: Colors.blueGrey,
                    highlightColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        sifirlaIcecek();
                      });
                    },
                  ),
                 contentPadding: EdgeInsets.only(top: 50.0, bottom: 52.0),
                ),
              ),
              Expanded(
                flex: 7,
                child: ListTile(
                  tileColor: Colors.white,
                  leading: Icon(Icons.cake,size: 35.0),
                  title: Text('Eklediğiniz Tatlılar', style: TextStyle(fontSize: 25),),
                  subtitle: sepeteTatliYolla(),
                  trailing: IconButton(
                    iconSize: 30,
                    icon: Icon(Icons.delete),
                    color: Colors.blueGrey,
                    highlightColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        sifirlaTatli();
                      });
                    },
                  ),
                  contentPadding: EdgeInsets.only(top: 50.0, bottom: 52.0),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
