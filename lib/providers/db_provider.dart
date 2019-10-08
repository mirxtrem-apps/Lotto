import 'dart:io';

import 'package:flutter/services.dart';
import 'package:loterias/models/resultados-loteria.model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
// import 'package:path_provider/path_provider.dart';

class DBPRovider {
  // Patron Singleton
  static Database _database;
  static final DBPRovider db = DBPRovider._();

  DBPRovider._();

  get database async {
    if (_database != null) return _database;

    _database = await initDB();

    return _database;
  }

  initDB() async {

    // Construct the path to the app's writable database file:
    var dbDir = await getDatabasesPath();
    var dbPath = join(dbDir, "Lotto.db");

    // Delete any existing database:
    await deleteDatabase(dbPath);

    // Create the writable database file from the bundled demo database file:
    ByteData data = await rootBundle.load("assets/database/Lotto.db");
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(dbPath).writeAsBytes(bytes);

    return await openDatabase(dbPath,
        version: 1, // aumentar en cada cambio de la base datos
        onOpen: (Database db) {
      print('DB initialized');
    }, onCreate: (Database db, int version) async {});
  }

  // Obtener los resultados de la loterias por fecha.
  Future<List<Map<String, dynamic>>> getResultsByDate(String date) async {
    final Database db = await database;
    print(date);
    final res =
        await db.query('r_mayor', where: 'fecha = ?', whereArgs: [date]);
    print(res);
    // List<ResultadoModel> list = res.isNotEmpty ? res.map( (resultado) => ResultadoModel.fromJson(resultado) ).toList() : [];
    return res;
  }
}
