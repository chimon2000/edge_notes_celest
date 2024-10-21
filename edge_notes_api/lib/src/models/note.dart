import 'package:drift/drift.dart';

class Notes extends Table {
  late final id = integer().autoIncrement()();
  late final title = text().withLength(min: 1, max: 100)();
  late final content = text().withLength(min: 1)();
  late final createdAt = dateTime().withDefault(currentDate)();
  late final updatedAt = boolean().nullable()();
}
