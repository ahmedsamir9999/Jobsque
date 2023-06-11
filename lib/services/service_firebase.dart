

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jobsque/model/CreateUserModel.dart';

import '../model/UserModel.dart';

class ServicesFireBase
{

  final cloudStore = FirebaseFirestore.instance;

  addUserToFirebase({required UserModel UserModel , required String token}) async {
    await cloudStore
        .collection('users')
        .doc(token)
        .set(UserModel.toJson());
  }
}