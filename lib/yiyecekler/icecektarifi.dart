import 'package:flutter/material.dart';
import 'package:kasikla_project/bilgiler/benimlinkler.dart';
import 'package:kasikla_project/bilgiler/hakkinda.dart';
import 'package:kasikla_project/tarifler.dart';



class IcecekTarifi extends StatelessWidget {
  const IcecekTarifi({Key? key}) : super(key: key);

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
              title: Text('Milkshake Tarifi', style: TextStyle(fontSize: 30)),
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
                      child: Image.asset('assets/images/icecek_8.png'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 10.0,left: 10,right: 10),
                      padding: EdgeInsets.only(left:9.0, right:5.0),
                      child: Text(
                        '1 su bardağı süt, 2 top çikolatalı dondurma, 1 yemek kaşığı kakao, 2-3 parça buz, 1 yemek kaşığı kadar şeker.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10.0,left: 10,right: 10),
                      padding: EdgeInsets.only(left:9.0, right:5.0),
                      child: Text(
                        'Kakao ve sütü, blenderda güzelce karıştırın. Üzerine şeker, dondurma ve kakaoyu ekleyin ve köpürene kadar karıştırın.Buzları da bardağa alın ve üzerine hazırladığınız milkshakei doldurun.Dilerseniz üzerine krem şanti de ilave edebilirsiniz. Afiyet olsun! ',
                        style: TextStyle(fontSize: 17),
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
