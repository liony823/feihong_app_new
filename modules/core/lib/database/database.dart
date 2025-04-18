import 'package:common/common.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

/// 数据库管理类，提供数据库操作的单例实例
class DB {
  static Database? _instance;
  static DB? _db;

  // 私有构造函数
  DB._internal();

  /// 获取数据库单例
  static DB get instance {
    _db ??= DB._internal();
    return _db!;
  }

  /// 获取数据库对象
  Database get database {
    if (_instance == null) {
      throw Exception('数据库尚未初始化，请先调用 init() 方法');
    }
    return _instance!;
  }

  /// 初始化数据库
  Future<void> init() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'feihong_im_v1.db');
    _instance = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {},
    );
    await onUpgrade(_instance!);
  }

  /// 数据库升级操作
  Future<bool> onUpgrade(Database db) async {
    String path = await rootBundle.loadString('packages/core/sql.txt');
    List<String> names = path.split(';');
    int maxVersion = SpHelper.maxSqlVersion;
    int saveVersion = 0;
    for (int i = 0; i < names.length; i++) {
      if (names[i] == '') {
        continue;
      }
      int version = int.parse(names[i]);
      if (version > maxVersion) {
        String sqlStr =
            await rootBundle.loadString('packages/core/sql/$version.sql');
        var sqlList = sqlStr.split(';');
        for (String sql in sqlList) {
          String exeSql = sql.replaceAll('\n', '');
          if (exeSql != '') {
            try {
              db.execute(exeSql);
            } catch (e) {
              AppLogger.e('sql文件执行失败', e);
            }
          }
        }
        if (version > saveVersion) {
          saveVersion = version;
        }
      }
    }
    if (saveVersion > 0) {
      SpHelper.setMaxSqlVersion(saveVersion);
    }
    return true;
  }

  /// 执行SQL查询，返回查询结果
  Future<List<Map<String, dynamic>>> query(
    String table, {
    bool? distinct,
    List<String>? columns,
    String? where,
    List<Object?>? whereArgs,
    String? groupBy,
    String? having,
    String? orderBy,
    int? limit,
    int? offset,
  }) async {
    return await database.query(
      table,
      distinct: distinct,
      columns: columns,
      where: where,
      whereArgs: whereArgs,
      groupBy: groupBy,
      having: having,
      orderBy: orderBy,
      limit: limit,
      offset: offset,
    );
  }

  /// 执行SQL插入操作
  Future<int> insert(
    String table,
    Map<String, Object?> values, {
    String? nullColumnHack,
    ConflictAlgorithm? conflictAlgorithm,
  }) async {
    return await database.insert(
      table,
      values,
      nullColumnHack: nullColumnHack,
      conflictAlgorithm: conflictAlgorithm,
    );
  }

  /// 执行SQL更新操作
  Future<int> update(
    String table,
    Map<String, Object?> values, {
    String? where,
    List<Object?>? whereArgs,
    ConflictAlgorithm? conflictAlgorithm,
  }) async {
    return await database.update(
      table,
      values,
      where: where,
      whereArgs: whereArgs,
      conflictAlgorithm: conflictAlgorithm,
    );
  }

  /// 执行SQL删除操作
  Future<int> delete(
    String table, {
    String? where,
    List<Object?>? whereArgs,
  }) async {
    return await database.delete(
      table,
      where: where,
      whereArgs: whereArgs,
    );
  }

  /// 执行原始SQL语句
  Future<void> execute(String sql, [List<Object?>? arguments]) async {
    await database.execute(sql, arguments);
  }

  /// 执行事务操作
  Future<T> transaction<T>(Future<T> Function(Transaction txn) action) async {
    return await database.transaction(action);
  }

  /// 执行SQL查询并返回第一条结果
  Future<Map<String, dynamic>?> queryFirst(
    String table, {
    bool? distinct,
    List<String>? columns,
    String? where,
    List<Object?>? whereArgs,
    String? groupBy,
    String? having,
    String? orderBy,
  }) async {
    final results = await query(
      table,
      distinct: distinct,
      columns: columns,
      where: where,
      whereArgs: whereArgs,
      groupBy: groupBy,
      having: having,
      orderBy: orderBy,
      limit: 1,
    );

    return results.isNotEmpty ? results.first : null;
  }

  /// 关闭数据库
  Future<void> close() async {
    if (_instance != null) {
      await _instance!.close();
      _instance = null;
    }
  }
}
