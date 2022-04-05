import 'package:flutter/material.dart';
import 'package:kasikla_project/hakkinda.dart';

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
                    'Bu uygulama; belki de bir gün gerçekten var olabilecek, küçük bir sahil kasabasında yer edinmiş, sadece 6 masaya sahip, \'kaşıkla!\' adında minik bir restorana ait sipariş uygulamasıdır.',
                    style: TextStyle(fontSize: 22),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

//