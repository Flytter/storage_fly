library storage_fly;

import 'dart:ui';

import 'package:universal_html/prefer_universal/indexed_db.dart' as idb;
import 'dart:html' as html;


abstract class StorageFly {
  
  // Verify if the current browser
  // support indexed db into your
  // current configurations
  bool isSupported;

  Future openDatabase(String databaseName);



}

class StorageFlyImpl implements StorageFly {
  
  @override
  bool isSupported = idb.IdbFactory.supported;

  @override
  Future openDatabase(String databaseName) {
    return html.window.indexedDB.open(
      "testDatabase", 1
    );

  }
}