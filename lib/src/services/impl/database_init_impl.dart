part of storage_fly;



class DatabaseInitImpl implements DatabaseInit {

  // This method check if the IdbFactory
  // is supported for your current browser
  @override
  bool checkIfDatabaseIsSupported() => IdbFactory.supported;
}