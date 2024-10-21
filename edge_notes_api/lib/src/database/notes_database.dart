import 'package:celest_backend/src/models/note.dart';
import 'package:drift/drift.dart';

part 'notes_database.g.dart';

@DriftDatabase(tables: [Notes])
class NoteDatabase extends _$NoteDatabase {
  NoteDatabase(super.e);

  @override
  int get schemaVersion => 1;
}
