library storage_fly;

import 'dart:html' as html;
import 'dart:indexed_db' as idb;

import 'package:storage_fly/src/models/database_model.dart';
import 'package:storage_fly/src/services/open_database_service.dart';

abstract class StorageFly {
  
  // Verify if the current browser
  // support indexed db into your
  // current configurations
  bool isSupported;

  Future startDatabase(String databaseName, {int versionNumber});

}

class StorageFlyImpl implements StorageFly {
  
  @override
  bool isSupported = idb.IdbFactory.supported;

  @override
  Future startDatabase(String databaseName, {int versionNumber = 1}) =>
        OpenDatabaseService().openDatabase(DatabaseModel(databaseName: databaseName, databaseVersion: versionNumber));
}