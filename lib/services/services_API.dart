import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:jobsque/model/CreateUserModel.dart';
import 'package:jobsque/model/GetProfileModel.dart';
import 'package:jobsque/services/service_firebase.dart';

import '../helper/sharedprefeances.dart';
import '../model/UserModel.dart';

class Services {
  final fire = ServicesFireBase();

  register({
    required String name,
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(
          'http://167.71.79.133/api/auth/register?name=$name&email=$email&password=$password'),
      headers: {'Content-Type': 'multipart/form-data'},
    );

    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      CreateUserModel user =
          CreateUserModel.fromJson(jsonDecode(response.body));
      print('User register successfully!!');
      print(user.token.toString());
      print(user.profile?.id.toString());
    } else {
      print('Error during register ');
    }
  }

//  Future<UserModel>
  signIn({
    required String email,
    required String password,
  }) async {
    http.Response response = await http.post(
        Uri.parse("http://167.71.79.133/api/auth/login",),
        body: {
          "password":password ,
          "email": email,
        }
    );

    UserModel user = UserModel.fromJson(jsonDecode(response.body));

    MyCache.SetString(
        key: MyChachKey.token, value: "Bearer ${user.token.toString()}");
    MyCache.SetString(
        key: MyChachKey.userId, value: user.user!.id.toString());
    MyCache.SetString(
        key: MyChachKey.name, value: user.user!.name.toString());

    print(response.body);
    print(response.statusCode);

    if (response.statusCode == 200) {
      print('User login successfully!!');
    } else {
      print('Error during Login ');
    }

    // await fire.addUserToFirebase(
    //      UserModel: user,
    //      token: user.token.toString());

    // return user ;
  }



  Future<GetProfileModel> getProfile()async
  {
    final response = await http.get(
      Uri.parse(
          'http://167.71.79.133/api/auth/profile/${MyCache.GetString(key: MyChachKey.userId)}'),
      headers: {'Authorization': MyCache.GetString(key: MyChachKey.token)},
    );

    GetProfileModel profile = GetProfileModel.fromJson(jsonDecode(response.body));

    return profile;
  }

}
