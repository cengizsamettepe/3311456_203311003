import 'package:flutter/material.dart';
import 'package:kasikla_project/bilgiler/benimlinkler.dart';
import 'package:kasikla_project/bilgiler/hakkinda.dart';
import 'package:kasikla_project/tarifler.dart';



class TatliTarifi extends StatelessWidget {
  const TatliTarifi({Key? key}) : super(key: key);

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
              title: Text('Profiterol Tarifi', style: TextStyle(fontSize: 30)),
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
                      child: Image.asset('assets/images/tatli_3.png'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 10.0,left: 10,right: 10),
                      padding: EdgeInsets.only(left:9.0, right:5.0),
                      child: Text(
                        '-Hamuru için: *100 gr margarin *1 su bardağı su *1,5 su bardağı un *3 adet yumurta '
                            '-Kreması için: *2,5 su bardağı süt *1 su bardağı şeker *3 çorba kaşığı un *1 adet yumurta *1 paket vanilya'
                            '-Üzeri için: *1 paket çikolata sos',
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
                        'İlk olarak margarini bir tavada eritelim. Margarin eridikten sonra suyu ve unu ekleyerek karıştıralım. Katılaşmaya başlayacaktır. Kaşıkla sürekli katılaşan hamuru karıştıralım ki topaklanmasın. '
                            '3 dk. pişirdikten sonra soğumaya alalım. Soğuduktan sonra yumurtaları tek tek içine kıralım ve yumurtaları iyice yedirelim. '
                            'Daha sonra hazırladığımız hamuru elimizi ıslatarak küçük küçük toplara bölelim ve yağlı kağıt serdiğimiz tepsiye dizelim. '
                            'Fırında pişirmeye bırakalım. Bu arada kremasını tüm malzemeleri ekleyerek pişirelim. Pişirdiğimiz topları bıçakla keselim ve hazırladığımız kremayı içine dolduralım. Borcama alalım. Son olarak da çikolata sosu hazırlayıp üzerine dökelim. Afiyet olsun! ',
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