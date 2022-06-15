import 'package:flutter/material.dart';
import 'package:kasikla_project/bilgiler/uyginfo.dart';
import 'package:lottie/lottie.dart';


class FazlaBilgi extends StatefulWidget {
  const FazlaBilgi({Key? key}) : super(key: key);

  @override
  State<FazlaBilgi> createState() => _FazlaBilgiState();
}
class _FazlaBilgiState extends State<FazlaBilgi> {

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
            title: Text('Daha Fazla Bilgi'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => appinfo()),
                );
              },
            ),
          ),
          //floatingActionButton:
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Expanded(flex: 1,child: Lottie.asset('assets/images/99142-green-graph-growing.json')),
                Expanded(flex: 2,child: Container(
                  margin: EdgeInsets.all(40.0),
                  padding: EdgeInsets.all(8.0),
                  child: Text('kaşıkla!, hayali bir restoran olmakla başlayıp, markalaşarak kendi ürünlerini de üretmeyi ve bunları satışa çıkarmayı hedefleyen bir isim olmaya başlamıştır.'
                    'Gelecek günlerde ürettiği ürün çeşidini arrtıracak olmaklar birlikte, \'kaşıkla!\' imzalı yiyecek, içecek ve tatlıların da seri üretimine başlamayı planlamış bir markadır.',
                      style:TextStyle(fontSize: 17) ),),),
                Expanded(flex: 1,child: Lottie.asset('assets/images/69733-food-beverage.json'),),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}