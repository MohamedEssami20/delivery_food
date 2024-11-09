import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_food/core/service/data_base_service.dart';

import '../errors/custom_exception.dart';

class FirestorService extends DataBaseService {
  @override

  // create method that add data to firebase;
  Future<void> addData(
      {required Map<String, dynamic> data, required String path,required String? documentId})async {
    try {
      if(documentId==null){
        await FirebaseFirestore.instance.collection(path).add(data);
      }
      else{
        await FirebaseFirestore.instance.collection(path).doc(documentId).set(data);
      }
    } catch (e) {
      throw CustomException(errorMessage: "there was an error please try again later");
    }
  }
}
