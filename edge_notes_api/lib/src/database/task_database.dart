import 'package:drift/drift.dart';

part 'task_database.g.dart';

class Tasks extends Table {
  late final id = integer().autoIncrement()();
  late final title = text().withLength(min: 1, max: 100)();
  late final completed = boolean().withDefault(const Constant(false))();
}

@DriftDatabase(tables: [Tasks])
class TaskDatabase extends _$TaskDatabase {
  TaskDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
