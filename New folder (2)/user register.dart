import 'dart:io';
import 'rose.dbconnection.dart';
import 'dart:async';

void infos() async{
  var names = await deboradb();

  stdout.write("jina la kwanza ");
  var jmoja = stdin.readLineSync();

  stdout.write("jina la pili ");
  var jpili = stdin.readLineSync();

  stdout.write("jina la mwisho");
  var jtatu = stdin.readLineSync();

  print("Ingiza taarifa zako za Elimu\n");

  stdout.write("ulisoma primary gan ");
  var primary1 = stdin.readLineSync();

  stdout.write("ulisoma secondary gan ");
  var secondary1 = stdin.readLineSync();

  stdout.write("ingiza user name yako ");
  var user = stdin.readLineSync();

  stdout.write("password please ");
  var password = stdin.readLineSync();


  var dbdetail = await names.query("insert into personaldetail values(?,?,?,?,?)",[jmoja,jpili,jtatu,user,password]);
  var database1 = await names.query("insert into academic values(?,?,?,?,?)",[jmoja,jpili,jtatu,primary1,secondary1]);

  print("");
  print('je unataka kuingia? bonyeza \n1. ndio \n2. ondoka');



  await names.close();
}