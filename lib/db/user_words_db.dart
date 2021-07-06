import 'package:lord_of_the_words/models/question.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class UserWordsDatabase {
  static final UserWordsDatabase instance = UserWordsDatabase._init();

  static Database? _database;

  UserWordsDatabase._init();
//starting open db
  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('userWords.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 3, onCreate: _createDB);
  }

//create metodu userWords.db database i file da yoksa çalışacak
  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';

    await db.execute("CREATE TABLE USERWORDS("
        "_id INTEGER PRIMARY KEY,"
        " text TEXT,"
        " answer TEXT)");
  }

  Future close() async {
    final db = await instance.database;
    _database = null;

    db.close();
  }

  Future<Question> create(Question userWord) async {
    final db = await instance.database;

    final id = await db.insert("USERWORDS", userWord.toJson());
    return userWord.copy(id: id);
  }

  Future<List<Question>> readAllUserWords() async {
    final db = await instance.database;

    //final orderBy = '${QuestionFields.id} ASC';
    // final result =
    //     await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');

    final result = await db.query("USERWORDS");

    return result.map((json) => Question.fromJson(json)).toList();
  }

  Future<int> update(Question note) async {
    final db = await instance.database;

    return db.update(
      "USERWORDS",
      note.toJson(),
      where: '${QuestionFields.id} = ?',
      whereArgs: [note.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      "USERWORDS",
      where: '${QuestionFields.id} = ?',
      whereArgs: [id],
    );
  }
}
