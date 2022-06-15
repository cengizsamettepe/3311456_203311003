import 'package:flutter/material.dart';
import 'package:kasikla_project/bilgiler/hakkinda.dart';
import 'package:kasikla_project/bilgiler/moreuyginfo.dart';

class appinfo extends StatelessWidget {
  const appinfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                          builder: (context) => Hakkinda()));
                },
              ),
              title: Text('Uygulama Hakkında', style: TextStyle(fontSize: 30)),
              backgroundColor: Colors.blueGrey,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(55.0),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Bu uygulama; belki de bir gün gerçekten var olabilecek, sadece 8 masaya sahip, \'kaşıkla!\' adında minik bir restorana ait uygulamadır.',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                ElevatedButton(
                  child: Text("Daha fazla bilgi", style: TextStyle(color: Colors.white, fontSize: 25,),),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FazlaBilgi()));

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
        ),
      ),
    );
  }
}

//