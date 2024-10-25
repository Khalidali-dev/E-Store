
import '../../src.dart';
import 'package:sqflite/sqflite.dart';

class LocalProductsStorage {
  static final LocalProductsStorage _instance =
      LocalProductsStorage._internal();

  factory LocalProductsStorage() {
    return _instance;
  }

  LocalProductsStorage._internal();

  static Database? _database;

  static const _databaseName = "estore.db";
  static const _databaseVersion = 1;
  static const table = 'products';

  Future<Database> get database async {
    if (_database != null) return _database!;

    // Initialize the database
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    return await openDatabase(_databaseName,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(db, version) async {
    await db.execute('''
          CREATE TABLE products(
            id INTEGER PRIMARY KEY,
            title TEXT,
            price REAL,
            description TEXT,
            image TEXT
          )
        ''');
  }

  Future<void> cacheProducts(List<ProductsModel> products) async {
    final db = await database;

    for (var product in products) {
      await db.insert(
        table,
        product.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  Future<List<ProductsModel>> getCachedProducts() async {
    final db = await database;
    final result = await db.query(table);

    if (result.isNotEmpty) {
      return result.map((json) => ProductsModel.fromJson(json)).toList();
    } else {
      return [];
    }
  }

  Future<void> clearCachedProducts() async {
    final db = await database;
    await db.delete(table);
  }
}
