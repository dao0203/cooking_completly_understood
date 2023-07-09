import 'dart:io';

class IsarDbDirectory {
  final String path = "test/isar_db";

  Future<void> create() async {
    final directory = Directory(path);
    await directory.create();
  }

  Future<void> delete() async {
    final directory = Directory(path);
    await directory.delete(recursive: true);
    //Isar.initializeIsarCore(download: true);を実行したときに生成されるファイルを削除するためのコード
    await File("libisar.dylib").delete();
  }
}
