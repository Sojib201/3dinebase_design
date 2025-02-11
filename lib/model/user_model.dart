class UserModel {
  String? status;
  String? message;
  UserInfo? userInfo;
  String? token;

  UserModel({this.status, this.message, this.userInfo, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    userInfo = json['user-info'] != null
        ? new UserInfo.fromJson(json['user-info'])
        : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.userInfo != null) {
      data['user-info'] = this.userInfo!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class UserInfo {
  String? cid;
  String? userId;
  String? firstName;
  String? lastName;
  String? email;
  String? profileImage;
  String? companyName;
  String? companyLogo;
  String? companyBanner;
  String? companyTagline;

  UserInfo(
      {this.cid,
        this.userId,
        this.firstName,
        this.lastName,
        this.email,
        this.profileImage,
        this.companyName,
        this.companyLogo,
        this.companyBanner,
        this.companyTagline});

  UserInfo.fromJson(Map<String, dynamic> json) {
    cid = json['cid'];
    userId = json['user-id'];
    firstName = json['first-name'];
    lastName = json['last-name'];
    email = json['email'];
    profileImage = json['profile-image'];
    companyName = json['company-name'];
    companyLogo = json['company-logo'];
    companyBanner = json['company-banner'];
    companyTagline = json['company-tagline'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cid'] = this.cid;
    data['user-id'] = this.userId;
    data['first-name'] = this.firstName;
    data['last-name'] = this.lastName;
    data['email'] = this.email;
    data['profile-image'] = this.profileImage;
    data['company-name'] = this.companyName;
    data['company-logo'] = this.companyLogo;
    data['company-banner'] = this.companyBanner;
    data['company-tagline'] = this.companyTagline;
    return data;
  }
}
