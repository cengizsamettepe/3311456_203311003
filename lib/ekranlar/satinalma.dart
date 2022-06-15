import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kasikla_project/ekranlar/faturalar.dart';
import 'package:lottie/lottie.dart';
import 'anasayfa.dart';

class satinalma extends StatefulWidget {
  const satinalma({Key? key}) : super(key: key);

  @override
  State<satinalma> createState() => _satinalmaState();
}

class _satinalmaState extends State<satinalma> {

////////////////////////////////
 void mesajKutusu(){
    showDialog(
        context: context,
        builder: (BuildContext){
          return AlertDialog(
              actions: [
              TextButton(onPressed: (){
                   setState(() {
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AnaSayfa()));
    });
                   }, child: Text("Ana Sayfa",style: TextStyle(color: Colors.black),)),
                TextButton(onPressed: (){
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fatura()));
                  });
                }, child: Text("Faturalar",style: TextStyle(color: Colors.black),))
                ],
            title: Text('Ödeme tamamlandı.'),
            content: Text('Faturalar kısmından bilgilerinizi görüntüleyebilir ya da Ana Sayfaya dönebilirsiniz.'),
          );
        });

  }
 void uyariKutusu(){
   showDialog(
       context: context,
       builder: (BuildContext){
         return AlertDialog(
           title: Text('Hata'),
           content: Text('Kutucukları eksiksiz doldurunuz.'),
         );
       });

 }
 void uyariMasa(){
   showDialog(
       context: context,
       builder: (BuildContext){
         return AlertDialog(
           title: Text('Hata'),
           content: Text('En fazla 6 masamız var.'),
         );
       });

 }
 TextEditingController adSoyad=new TextEditingController();
 TextEditingController masaNo=new TextEditingController();
 TextEditingController kartNo=new TextEditingController();
 TextEditingController telNo=new TextEditingController();
//////////////////////////////

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
            title: Text('ÖDEME'),
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
                    controller: adSoyad,
                    decoration:
                    InputDecoration(
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      focusColor: Colors.blueGrey,
                      prefixIcon: Icon(Icons.add_box_outlined, color: Colors.blueGrey),
                      labelText: "Ad ve Soyad:",
                      hintText: "Faturada gözükecek adınızı ve soyadınızı girin.",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.blueGrey,)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.black,)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    controller: masaNo,
                       decoration:
                           InputDecoration(
                  labelStyle: TextStyle(color: Colors.blueGrey),
                  focusColor: Colors.blueGrey,
                  prefixIcon: Icon(Icons.add_box_outlined, color: Colors.blueGrey),
                  labelText: "Masa No:",
                  hintText: "Bulunduğunuz masanın numarasını girin.",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.blueGrey,)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.black,)),
              ),
              ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    maxLength: 16,
                    keyboardType: TextInputType.number,
                    controller: kartNo,
                    decoration:
                    InputDecoration(
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      focusColor: Colors.blueGrey,
                      prefixIcon: Icon(Icons.add_box_outlined, color: Colors.blueGrey),
                      labelText: "Kart Numarası:",
                      hintText: "Ödeme yapacağınız kartın numarasını giriniz.",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.blueGrey,)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.black,)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    maxLength: 11,
                    keyboardType: TextInputType.number,
                    controller: telNo,
                    decoration:
                    InputDecoration(labelStyle: TextStyle(color: Colors.blueGrey),
                      focusColor: Colors.blueGrey,
                      prefixIcon: Icon(Icons.add_box_outlined, color: Colors.blueGrey),
                      labelText: "Telefon Numarası:",
                      hintText: "Telefon numaranızı giriniz.(05 ile başlamalıdır.)",
                      hintStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.blueGrey,)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(color: Colors.black,)),
                    ),
                  ),
                ),
               Row(
                 children: [
                   Expanded(
                     child: Container(
                         child:  Lottie.asset('assets/images/68908-checking-out-online.json')),
                   ),
                   Expanded(
                     child: Column(
                       children: [
                         FloatingActionButton(
                           tooltip: 'Ödemeyi Tamamla',
                           backgroundColor: Colors.blueGrey,
                           splashColor: Colors.black12,
                           child: Icon(Icons.check_circle_outlined),
                           onPressed: () {

                             if(masaNo.text.isEmpty || adSoyad.text.isEmpty == true){
                               return uyariKutusu();
                             }
                             else if( int.parse(masaNo.text) > 8){
                               return uyariMasa();
                             }
                             else if(kartNo.text.isEmpty == true || (kartNo.text).length < 16 ){
                               return uyariKutusu();
                             }
                             else if(telNo.text.isEmpty == true || (telNo.text).length < 11 ){
                               return uyariKutusu();
                             }
                             else {



                               FirebaseFirestore firestore = FirebaseFirestore.instance;
                               CollectionReference siparisFaturalariRef = FirebaseFirestore.instance.collection('siparisFaturalari');
                               Map<String, dynamic> faturaData = {
                                 'adSoyad':adSoyad.text,
                                 'masaNo':masaNo.text,
                                 'kartNo':kartNo.text,
                                 'telNo':telNo.text};
                               siparisFaturalariRef.doc(adSoyad.text + ' isimli fatura').set(faturaData);
                                return mesajKutusu();


                             }
                           },

                         ),
                         Text('Siparişi tamamlamak için tıklayınız.'),
                       ],
                     ),
                   ),
                 ],
               ),
                
               

              ],
            ),
          ),
        ),
      ),
    );
  }
}