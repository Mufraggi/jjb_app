import 'dart:async';
import 'package:csv/csv.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';



class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'bjj_journal.db');

    return await openDatabase(
      path,
      version: 2,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await _createWorkoutsTable(db);
    await _createTechniquesTable(db);
    await _insertInitialTechniques(db);
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      await _createTechniquesTable(db);
      await _insertInitialTechniques(db);
    }
  }

  Future<void> _createWorkoutsTable(Database db) async {
    await db.execute('''
      CREATE TABLE workouts (
        id TEXT PRIMARY KEY,
        date INTEGER NOT NULL,
        type TEXT NOT NULL,
        feeling INTEGER NOT NULL,
        focusOfTheDay TEXT,
        duration INTEGER NOT NULL,
        tags TEXT NOT NULL,
        shortNote TEXT
      )
    ''');
  }

  Future<void> _createTechniquesTable(Database db) async {
    await db.execute('''
      CREATE TABLE techniques (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        category TEXT NOT NULL,
        name TEXT NOT NULL,
        UNIQUE(category, name)
      )
    ''');
  }

  Future<void> _insertInitialTechniques(Database db) async {
    const csvData = '''
Catégorie,Nom de la Technique
Positions Fondamentales (Contrôles),Garde Fermée (Closed Guard)
... [Insérez ici tout le contenu CSV fourni] ...
Défenses de Soumission,Contres spécifiques à chaque soumission
''';

    final techniques = const CsvToListConverter().convert(csvData, eol: '\n');

    for (final technique in techniques.skip(1)) {
      await db.insert(
        'techniques',
        {
          'category': technique[0].toString(),
          'name': technique[1].toString(),
        },
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
    }
  }
}