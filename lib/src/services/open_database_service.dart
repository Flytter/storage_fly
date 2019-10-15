part of storage_fly;

class OpenDatabaseService {
  Future<OpenDatabaseEnum> openDatabase(DatabaseModel databaseModel) async {
    if(databaseModel.databaseName.isEmpty) 
      return OpenDatabaseEnum.DATABASE_NOT_FOUND;
    if(databaseModel.databaseVersion == null)
      return OpenDatabaseEnum.DATABASE_VERSION_NOT_FOUND;
    else
      try {
        await html.window.indexedDB.open(
          databaseModel.databaseName,
          version: databaseModel.databaseVersion
        );
        return OpenDatabaseEnum.OPENED_DATABASE;
      } catch(e) {
        return OpenDatabaseEnum.INTERNAL_ERROR;
      }
  }
}