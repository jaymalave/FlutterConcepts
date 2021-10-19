import 'package:sqflite/sqflite.dart';
import 'package:path_provider/provider.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'dart:async';
import '../models/item_model.dart';

class NewsDbProvider{
  Database db;

  init() async {
    Directory documentsDirectory = await getApplicationDocumentDirectory();
    final path = join(documentsDirectory.path, "items.db");
    db = await openDatabase(
       path,
       version: 1,
       onCreate: (Database newDb, int version){
        newDb.execute(
          """ 
           CREATE TABLE Items(
              
           );
          """
        );
       } 
    )
  }
}