

class UserModel {

  User? user;
  String? token;
  bool? status;

  UserModel({
      this.user, 
      this.token, 
      this.status,});

  UserModel.fromJson(Map json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
    status = json['status'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    map['status'] = status;
    return map;
  }

}

class User {

  int? id;
  String? name;
  String? otp;
  dynamic towStep;
  String? email;
  dynamic emailVerifiedAt;
  String? createdAt;
  String? updatedAt;

  User({
      this.id, 
      this.name, 
      this.otp, 
      this.towStep, 
      this.email, 
      this.emailVerifiedAt, 
      this.createdAt, 
      this.updatedAt,});

  User.fromJson(Map json) {
    id = json['id'];
    name = json['name'];
    otp = json['otp'];
    towStep = json['tow_step'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['otp'] = otp;
    map['tow_step'] = towStep;
    map['email'] = email;
    map['email_verified_at'] = emailVerifiedAt;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}