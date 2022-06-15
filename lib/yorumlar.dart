import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasikla_project/ekranlar/dosyaislemleri.dart';
import 'package:kasikla_project/ekranlar/faturalar.dart';
import 'package:lottie/lottie.dart';
import 'ekranlar/anasayfa.dart';

class Yorum extends StatefulWidget {
  const Yorum({Key? key}) : super(key: key);

  @override
  State<Yorum> createState() => _YorumState();
}

class _YorumState extends State<Yorum> {

  TextEditingController yorum=new TextEditingController();
  String temptext = " ";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Antonio'),
      home: SafeArea(
        child: Scaffold(

          resizeToAvoidBottomInset: false,
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
            title: Text('Yorum'),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

          body: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    controller: yorum,
                    decoration:
                    InputDecoration(
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      focusColor: Colors.blueGrey,
                      prefixIcon: Icon(Icons.add_box_outlined, color: Colors.blueGrey),
                      labelText: "Yorum:",
                      hintText: "Yorum yaz.",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.blueGrey,)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.black,)),
                    ),
                  ),
                ),
                  ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey)) ,
                      onPressed: ()async{
                      DosyaIslemleri.dosyayiKaydet(yorum.text.trim().toString());
                           }, child: Text('Kaydet')),

                  ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blueGrey)) ,
                    onPressed: ()async{
                  DosyaIslemleri.dosyayiOku().then((value){setState(() {
                   temptext = value;
                   });
                  });
                           }, child: Text('Getir'),
                  ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(12)),
                      child: SingleChildScrollView(child: Text(temptext, style: TextStyle(fontSize: 18, color: Colors.white),))),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}