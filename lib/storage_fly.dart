library storage_fly;

import 'dart:html' as html;
import 'dart:indexed_db' as idb;


import 'package:storage_fly/src/enums/open_database_enum.dart';
import 'package:storage_fly/src/models/database_model.dart';
part 'package:storage_fly/src/services/open_database_service.dart';

abstract class StorageFly {

  Future startDatabase(String databaseName, {int versionNumber});

}

class StorageFlyImpl implements StorageFly {
  @override
  Future startDatabase(String databaseName, {int versionNumber = 1}) =>
        OpenDatabaseService().openDatabase(DatabaseModel(databaseName: databaseName, databaseVersion: versionNumber));
}