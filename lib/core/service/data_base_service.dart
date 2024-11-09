abstract class DataBaseService {
  // create method that add data to database;
  Future<void> addData(
      {required Map<String, dynamic> data, required String path, String documentId});
}
