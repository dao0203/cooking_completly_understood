import 'package:isar/isar.dart';

part 'food.g.dart';

@collection
class Food{
  Id id = Isar.autoIncrement;
  late String name;
}