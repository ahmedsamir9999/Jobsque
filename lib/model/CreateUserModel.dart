class CreateUserModel {
  bool? status;
  Data? data;
  Profile? profile;
  String? token;

  CreateUserModel({
      this.status, 
      this.data, 
      this.profile, 
      this.token,});

  CreateUserModel.fromJson(Map json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    profile = json['profile'] != null ? Profile.fromJson(json['profile']) : null;
    token = json['token'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    if (profile != null) {
      map['profile'] = profile?.toJson();
    }
    map['token'] = token;
    return map;
  }

}

class Profile {

  int? userId;
  String? name;
  String? email;
  String? updatedAt;
  String? createdAt;
  int? id;

  Profile({
      this.userId, 
      this.name, 
      this.email, 
      this.updatedAt, 
      this.createdAt, 
      this.id,});

  Profile.fromJson(Map json) {
    userId = json['user_id'];
    name = json['name'];
    email = json['email'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = userId;
    map['name'] = name;
    map['email'] = email;
    map['updated_at'] = updatedAt;
    map['created_at'] = createdAt;
    map['id'] = id;
    return map;
  }

}

class Data {

  String? name;
  String? email;
  int? otp;
  String? updatedAt;
  String? createdAt;
  int? id;

  Data({
      this.name, 
      this.email, 
      this.otp, 
      this.updatedAt, 
      this.createdAt, 
      this.id,});

  Data.fromJson(Map json) {
    name = json['name'];
    email = json['email'];
    otp = json['otp'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['otp'] = otp;
    map['updated_at'] = updatedAt;
    map['created_at'] = createdAt;
    map['id'] = id;
    return map;
  }

}