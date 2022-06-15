import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kasikla_project/model.dart';
import 'package:lottie/lottie.dart';
import 'anasayfa.dart';

class Fatura extends StatefulWidget {
  const Fatura({Key? key}) : super(key: key);

  @override
  State<Fatura> createState() => _FaturaState();
}
class _FaturaState extends State<Fatura> {

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference siparisFaturalariRef = FirebaseFirestore.instance.collection('siparisFaturalari');

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
            title: Text('Faturalar'),
            leading: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnaSayfa()),
                );
              },
            ),
          ),

          body: SingleChildScrollView(
            child: Column(
              children: [
                StreamBuilder<List<KFatura>>(
                  stream: okuFaturalar(),
                  builder: (context,AsyncSnapshot<List<KFatura?>> snapshot) {
                    faturaListe(AsyncSnapshot<List<KFatura?>> snapshot) {

                      return snapshot.data!
                          .map((fatura) => Container(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
                        child:
                         Material(
                           elevation: 6,
                           child: ListTile(
                             leading: Icon(Icons.style),
                             title: Text('Ad Soyad:${fatura!.adSoyad}'),
                             subtitle: Text('Masa No:${fatura.masaNo}, Tel No:${fatura.telNo}'),
                           ),
                         )
                        ),
                      )
                          .toList();
                    }
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: faturaListe(snapshot),
                        ),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.all(36.0),
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                            color: Colors.black,
                          ),
                        ),
                      );
                    }
                  }

                ),

                //Expanded(child: Lottie.asset('assets/images/100082-billing.json'),),

              ],
            ),
          ),
          ),
        ),
      );



  }

  Stream<List<KFatura>> okuFaturalar() {
    return firestore
        .collection('siparisFaturalari')
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) => KFatura.fromJson(doc.data())).toList());
  }
}

