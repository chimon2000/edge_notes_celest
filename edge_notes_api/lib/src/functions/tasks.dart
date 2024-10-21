import 'package:celest/celest.dart';
import 'package:celest_backend/src/database/task_database.dart';
import 'package:celest_backend/src/generated/cloud.celest.dart';

TaskDatabase get db => celest.data.taskDatabase;

@cloud
Future<List<Task>> listAllTasks() async {
  print('Fetching tasks...');
  return db.select(db.tasks).get();
}
