import 'package:flutter/material.dart';
void main() {

  print('merhaba');



  returnEdecek();



}



void returnEdecek() {

  try{

    print('>main ');

    return;

    hataliKoduCagiran();

    print('<main ');

  } on FormatException catch (e) {



    print(' format exception hatasi oldu ?');



  }

  catch (e){

    print('baska bir hata olustu'); // cast error hatasini burada yakaladik

  } finally{

    print('Finally');

  }

  print('finally\`den sonra'); // kod hatali olsada olmasada calisir ama fonksiyona atadiktan sonra isler degisti simdi methodtta ne oldu onu gorecegiz

// return'lu fonksiyon yaptiktan sonra bu print calismaz ne kadar 'try'in ' disinda yazsak da



}



void hataliKoduCagiran() {

  print('>hatali koducagiran');

  hataliKod();

  print('<hatali koducagiran');

}



void hataliKod() {

  print('> hataliKod');

  double.parse("bu bir double degildir");

  String? s = null;

  print(s!.length);

  print('<hataliKod'); // baska bir hata olustu dedigi icin bunu calistirmadi

}