import 'package:flutter/material.dart';
import 'package:kasikla_project/bilgiler/benimlinkler.dart';
import 'package:kasikla_project/bilgiler/hakkinda.dart';
import 'package:kasikla_project/tarifler.dart';



class YemekTarifi extends StatelessWidget {
  const YemekTarifi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(fontFamily: 'Antonio'),
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
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
                          builder: (context) => Tarifler()));
                },
              ),
              title: Text('Mercimek Çorbası Tarifi', style: TextStyle(fontSize: 30)),
              backgroundColor: Colors.blueGrey,
            ),
            body: Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0, bottom: 5.0, right: 15.0,left: 15.0),
                      child: Image.asset('assets/images/yemek_1.png'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 10.0,left: 10,right: 10),
                      padding: EdgeInsets.only(left:9.0, right:5.0),
                      child: Text(
                        '*1,5 su bardağı kırmızı mercimek *1 adet soğan *1/2 çay bardağı zeytinyağı *1 yemek kaşığı biber salçası *1 çay kaşığı kimyon *1 çay kaşığı karabiber *1 çay kaşığı tuz',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10.0,left: 10,right: 10),
                      padding: EdgeInsets.only(left:9.0, right:5.0),
                      child: Text(
                        'Kırmızı mercimekleri yıkayın ve ardından bir süzgecin üzerine alıp süzdürün. Soğanı minik minik doğrayıp bir tencere aktarın üzerine zeytinyağı ekleyerek kavurmaya başlayın. Ardından mercimekleri de ekleyerek kavurmaya devam edin.'
                            'Son olarak salçayı da ekleyerek birkaç dakika daha kavurun. Üzerine 4 - 4,5 su bardağı kadar su ilave ederek kaynamaya bırakın.'
                            'Mercimekler tamamen yumuşadığında içerisine baharat ve tuzu da ekleyin. Birkaç dakika daha bu şekilde kaynattıktan sonra ocaktan alın. El blenderıyla güzelce tüm malzemeleri pürüzsüz bir hale getirene kadar çekin.'
                            'Ardından sıcak sıcak servis edin. Afiyetler olsun! ',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
