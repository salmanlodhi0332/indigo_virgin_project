import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseController extends GetxController {
  late Database _database;
  RxList<String> searchResults = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    initDatabase();
  }

  Future<void> initDatabase() async {
    final path = join(await getDatabasesPath(), 'search_database.db');
    _database = await openDatabase(path, version: 1, onCreate: _createDb);
  }

  void _createDb(Database db, int newVersion) async {
    await db
        .execute('CREATE TABLE searches(id INTEGER PRIMARY KEY, query TEXT)');
  }

  Future<void> storeSearch(String query) async {
    await _database.insert('searches', {'query': query});
  }

  Future<void> getSearches(String searchTerm) async {
    final List<Map<String, dynamic>> maps = await _database.query(
      'searches',
      where: 'query LIKE ?',
      whereArgs: ['%$searchTerm%'],
    );

    searchResults.assignAll(
      List.generate(maps.length, (i) {
        return maps[i]['query'] as String;
      }),
    );
    update();
  }
}
