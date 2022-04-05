import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                   }, child: Text("Ana Sayfa",style: TextStyle(color: Colors.black),))
],
            title: Text(' ${masaNo.text} numaralı masanın siparişi tamamlandı.'),
            content: Text('Ödeme tamamlandı! Ana sayfaya dönebilir ya da uygulamadan çıkış yapabilirsiniz. '
                'Kart Numarası: ${kartNo.text},'
                ' Tel Numarası: ${telNo.text}'),
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

 TextEditingController masaNo=new TextEditingController();
 TextEditingController kartNo=new TextEditingController();
 TextEditingController telNo=new TextEditingController();
//////////////////////////////

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Antonio'),
      home: Scaffold(
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
        //floatingActionButton:
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              FloatingActionButton(
        tooltip: 'Ödemeyi Tamamla',
        backgroundColor: Colors.blueGrey,
        splashColor: Colors.black12,
                     child: Icon(Icons.check_circle_outlined),
              onPressed: () {

    if(masaNo.text.isEmpty == true){
    return uyariKutusu();
    }
    else if( int.parse(masaNo.text) > 6){
      return uyariMasa();
    }
    else if(kartNo.text.isEmpty == true || (kartNo.text).length < 16 ){
      return uyariKutusu();
    }
    else if(telNo.text.isEmpty == true || (telNo.text).length < 11 ){
      return uyariKutusu();
    }
    else {
      return mesajKutusu();
    }
        },

      ),
              Text('Siparişi tamamlamak için tıklayınız.')
            ],
          ),
        ),
      ),
    );
  }
}