import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final path = join(await getDatabasesPath(), 'search_database.db');
    return openDatabase(path, version: 1, onCreate: _createDb);
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute('CREATE TABLE searches(id INTEGER PRIMARY KEY, query TEXT)');
  }

  Future<void> storeSearch(String query) async {
    final db = await database;
    await db.insert('searches', {'query': query});
  }

  Future<List<String>> getSearches(String searchTerm) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'searches',
      where: 'query LIKE ?',
      whereArgs: ['%$searchTerm%'],
    );

    return List.generate(maps.length, (i) {
      return maps[i]['query'] as String;
    });
  }
}
