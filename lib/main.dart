// ignore_for_file: prefer_const_constructor, deprecated_member_use, prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Calculator",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  num sayi1 = 0, sayi2 = 0, sonuc = 0;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  topla(){
    setState(() {
      sayi1=num.parse(t1.text);
      sayi2=num.parse(t2.text);
      sonuc=sayi1+sayi2;
    });

  }
 cikar(){
    setState(() {
      sayi1=num.parse(t1.text);
      sayi2=num.parse(t2.text);
      sonuc=sayi1-sayi2;
    });

  }
   carp(){
    setState(() {
      sayi1=num.parse(t1.text);
      sayi2=num.parse(t2.text);
      sonuc=sayi1*sayi2;
    });

  }
   bol(){
    setState(() {
      sayi1=num.parse(t1.text);
      sayi2=num.parse(t2.text);
      sonuc=sayi1/sayi2;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      child: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text("$sonuc"),
            TextField(
              controller: t1,

            ),
            TextField(
              controller: t2,

            ),
            RaisedButton(
              onPressed: topla,
              child: Text("+"),
            ),
            RaisedButton(
              onPressed: cikar,
              child: Text("-"),
            ),
            RaisedButton(
              onPressed: carp,
              child: Text("*"),
            ),
            RaisedButton(
              onPressed: bol,
              child: Text("/"),
            )
          ],
        ),
      ),
    );
  }
}
