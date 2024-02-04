// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/drawer.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  instagram() {
    final Uri uri = Uri.parse("https://www.instagram.com/ensar.mese/");
    launchUrl(uri);
  }

  mail() {
    final Uri uri = Uri.parse(
        "mailto:ensarmese1@gmail.com?subject=Destek Talebi&body=Merhaba uygulamayla ilgili problemim var.");
    launchUrl(uri);
  }

  linkedin() {
    final Uri uri = Uri.parse("https://www.linkedin.com/in/ensar-me%C5%9Fe-095676268/");
    launchUrl(uri);
  }

  call() {
    final Uri uri = Uri.parse("tel:+905458838941");
    launchUrl(uri);
  }

  whatsapp() {
    final Uri uri = Uri.parse(
        "https://wa.me/+905458839841?text=merhaba yardımıcı olurmusunuz?");
    launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkımızda"),
      ),
      drawer: drawer(),
      body: Center(
        child: Column(
          children: [
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("BİZE AŞAĞIDAKİ LİNKLERDEN ULAŞABİLİRSİNİZ",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                        onTap: linkedin,
                        child: Image.asset(
                          "assets/images/linkedin.png",
                          width: 50,
                        ),
                      ),
                      InkWell(
                        onTap: call,
                        child: Icon(Icons.call,size: 40,),
                      ),
                      InkWell(
                        onTap: whatsapp,
                        child: Image.asset(
                          "assets/images/Whatsapp.png",
                          width: 50,
                        ),
                      ),
                      InkWell(
                        onTap: mail,
                        child: Icon(Icons.mail,size: 40,),
                      ),
                      InkWell(
                        onTap: instagram,
                        child: Image.asset(
                          "assets/images/instagram.png",
                          width: 50,
                        )),
                ],
              ),
                  
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
