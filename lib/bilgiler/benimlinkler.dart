import 'package:flutter/material.dart';
import 'package:kasikla_project/bilgiler/beniminfo.dart';
import 'package:lottie/lottie.dart';



class BenimLinkler extends StatefulWidget {
  const BenimLinkler({Key? key}) : super(key: key);

  @override
  State<BenimLinkler> createState() => _BenimLinklerState();
}
class _BenimLinklerState extends State<BenimLinkler> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Antonio'),
      home: SafeArea(
        child: Scaffold(

          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text('Bana Ulaşabileceğiniz Linkler'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => myinfo()),
                );
              },
            ),
          ),
          //floatingActionButton:
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Row(
                  children: [
                    Lottie.asset('assets/images/98802-youtube.json'),
                    Text('youtube.com/cengizsamettepe')
                  ],
                )),
                Expanded(child: Row(children: [
                  Lottie.asset('assets/images/99032-linkedin.json'),
                  Text('linkedin.com/cengizsamettepe')
                ],)),
                Expanded(child: Row(
                  children: [
                    Lottie.asset('assets/images/99282-twitter.json'),
                    Text('twitter.com/cengizsamettepe')
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}