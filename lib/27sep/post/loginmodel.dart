class Loginmode {
  String? success;
  String? message;
  Details? details;

  Loginmode({this.success, this.message, this.details});

  Loginmode.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    details =
        json['details'] != null ? new Details.fromJson(json['details']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.details != null) {
      data['details'] = this.details!.toJson();
    }
    return data;
  }
}

class Details {
  String? id;
  String? accountVerifybyAdmin;
  String? adminRejectReason;
  String? adminRejectTime;
  String? adminRejectId;
  String? name;
  String? gender;
  String? userType;
  String? surname;
  String? email;
  String? city;
  String? state;
  String? country;
  String? phone;
  String? password;
  String? about;
  String? address;
  String? licenseNumber;
  String? image;
  String? licenseImage;
  String? licenseImageVerified;
  String? documentImage;
  String? documentVerifyStatus;
  String? latitude;
  String? longitude;
  String? regId;
  String? deviceType;
  String? loginType;
  String? amount;
  String? created;
  String? updated;
  String? amountStatus;
  String? labWalkInMode;
  String? labHomeCollectionMode;
  String? passcodeStatus;
  String? activeStatus;
  String? emailOtp;

  Details(
      {this.id,
      this.accountVerifybyAdmin,
      this.adminRejectReason,
      this.adminRejectTime,
      this.adminRejectId,
      this.name,
      this.gender,
      this.userType,
      this.surname,
      this.email,
      this.city,
      this.state,
      this.country,
      this.phone,
      this.password,
      this.about,
      this.address,
      this.licenseNumber,
      this.image,
      this.licenseImage,
      this.licenseImageVerified,
      this.documentImage,
      this.documentVerifyStatus,
      this.latitude,
      this.longitude,
      this.regId,
      this.deviceType,
      this.loginType,
      this.amount,
      this.created,
      this.updated,
      this.amountStatus,
      this.labWalkInMode,
      this.labHomeCollectionMode,
      this.passcodeStatus,
      this.activeStatus,
      this.emailOtp});

  Details.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    accountVerifybyAdmin = json['accountVerifybyAdmin'];
    adminRejectReason = json['admin_reject_reason'];
    adminRejectTime = json['admin_reject_time'];
    adminRejectId = json['admin_reject_id'];
    name = json['name'];
    gender = json['gender'];
    userType = json['userType'];
    surname = json['surname'];
    email = json['email'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    phone = json['phone'];
    password = json['password'];
    about = json['about'];
    address = json['address'];
    licenseNumber = json['license_number'];
    image = json['image'];
    licenseImage = json['license_image'];
    licenseImageVerified = json['license_image_verified'];
    documentImage = json['document_image'];
    documentVerifyStatus = json['document_verify_status'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    regId = json['reg_id'];
    deviceType = json['device_type'];
    loginType = json['login_type'];
    amount = json['amount'];
    created = json['created'];
    updated = json['updated'];
    amountStatus = json['amount_status'];
    labWalkInMode = json['labWalkInMode'];
    labHomeCollectionMode = json['labHomeCollectionMode'];
    passcodeStatus = json['passcode_status'];
    activeStatus = json['active_status'];
    emailOtp = json['EmailOtp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['accountVerifybyAdmin'] = this.accountVerifybyAdmin;
    data['admin_reject_reason'] = this.adminRejectReason;
    data['admin_reject_time'] = this.adminRejectTime;
    data['admin_reject_id'] = this.adminRejectId;
    data['name'] = this.name;
    data['gender'] = this.gender;
    data['userType'] = this.userType;
    data['surname'] = this.surname;
    data['email'] = this.email;
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['phone'] = this.phone;
    data['password'] = this.password;
    data['about'] = this.about;
    data['address'] = this.address;
    data['license_number'] = this.licenseNumber;
    data['image'] = this.image;
    data['license_image'] = this.licenseImage;
    data['license_image_verified'] = this.licenseImageVerified;
    data['document_image'] = this.documentImage;
    data['document_verify_status'] = this.documentVerifyStatus;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['reg_id'] = this.regId;
    data['device_type'] = this.deviceType;
    data['login_type'] = this.loginType;
    data['amount'] = this.amount;
    data['created'] = this.created;
    data['updated'] = this.updated;
    data['amount_status'] = this.amountStatus;
    data['labWalkInMode'] = this.labWalkInMode;
    data['labHomeCollectionMode'] = this.labHomeCollectionMode;
    data['passcode_status'] = this.passcodeStatus;
    data['active_status'] = this.activeStatus;
    data['EmailOtp'] = this.emailOtp;
    return data;
  }
}
