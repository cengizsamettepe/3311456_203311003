import 'package:flutter/material.dart';
import 'package:kasikla_project/hakkinda.dart';


class myinfo extends StatelessWidget {
  const myinfo({Key? key}) : super(key: key);

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
                          builder: (context) => Hakkinda()));
                },
              ),
              title: Text('Geliştirici Hakkında', style: TextStyle(fontSize: 30)),
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
                      child: Image.asset('assets/images/ben.jpeg'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      padding: EdgeInsets.only(left:9.0, right:5.0,bottom: 12.0),
                      child: Text(
                        'Merhaba, ben Cengiz Samet Tepe. Selçuk Üniversitesi Bilgisayar Mühendisliği öğrencisiyim. '
                            'Uygulama halen yapım aşamasındadır, buna bağlı olarak eksiklikler veya hatalar ile karşılaşılabilir. Bu şirin uygulamayı incelediğiniz için teşekkür ederim. ',
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

//