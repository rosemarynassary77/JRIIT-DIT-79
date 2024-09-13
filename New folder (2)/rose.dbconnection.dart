import 'package:mysql1/mysql1.dart';
import 'dart:async';

Future deboradb() async{
  var nama = await ConnectionSettings(
    host: 'localhost',
    port: 3306,
    db: "rose",
    user: "root"
  );
  var mamy = MySqlConnection.connect(nama);
  return mamy; 
}