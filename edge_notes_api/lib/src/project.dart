import 'package:celest/celest.dart';
import 'package:celest_backend/src/database/task_database.dart';

const project = Project(name: 'edge_notes_api');

const tasksDatabase = Database(
  schema: Schema.drift(TaskDatabase),
);
