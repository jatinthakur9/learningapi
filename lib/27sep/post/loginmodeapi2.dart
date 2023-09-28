class twoapimode {
  String? success;
  String? message;
  List<Details>? details;

  twoapimode({this.success, this.message, this.details});

  twoapimode.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['details'] != null) {
      details = <Details>[];
      json['details'].forEach((v) {
        details!.add(new Details.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.details != null) {
      data['details'] = this.details!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Details {
  String? id;
  String? vendorId;
  String? userId;
  String? appointmentId;
  String? patientName;
  String? fathername;
  String? price;
  String? deliveryCharge;
  String? age;
  String? phone;
  String? email;
  String? address;
  String? date;
  String? timeSlot;
  String? status;
  String? resultStatus;
  String? reason;
  String? walkInCheck;
  String? homeCollectionCheck;
  String? latitude;
  String? longitude;
  String? deliveryStatus;
  String? paymentVerifyStatus;
  String? razorpayOrderId;
  String? razorpayPaymentId;
  String? razorpaySignature;
  String? refundStatus;
  String? created;
  String? updated;
  String? adminCancelStatus;
  String? packagetestId;
  String? coupanVerifiedId;
  String? paymentStatus;

  Details(
      {this.id,
      this.vendorId,
      this.userId,
      this.appointmentId,
      this.patientName,
      this.fathername,
      this.price,
      this.deliveryCharge,
      this.age,
      this.phone,
      this.email,
      this.address,
      this.date,
      this.timeSlot,
      this.status,
      this.resultStatus,
      this.reason,
      this.walkInCheck,
      this.homeCollectionCheck,
      this.latitude,
      this.longitude,
      this.deliveryStatus,
      this.paymentVerifyStatus,
      this.razorpayOrderId,
      this.razorpayPaymentId,
      this.razorpaySignature,
      this.refundStatus,
      this.created,
      this.updated,
      this.adminCancelStatus,
      this.packagetestId,
      this.coupanVerifiedId,
      this.paymentStatus});

  Details.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vendorId = json['vendorId'];
    userId = json['userId'];
    appointmentId = json['appointmentId'];
    patientName = json['patient_name'];
    fathername = json['fathername'];
    price = json['price'];
    deliveryCharge = json['delivery_charge'];
    age = json['age'];
    phone = json['phone'];
    email = json['email'];
    address = json['address'];
    date = json['date'];
    timeSlot = json['time_slot'];
    status = json['status'];
    resultStatus = json['result_status'];
    reason = json['reason'];
    walkInCheck = json['walkInCheck'];
    homeCollectionCheck = json['homeCollectionCheck'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    deliveryStatus = json['delivery_Status'];
    paymentVerifyStatus = json['payment_verify_status'];
    razorpayOrderId = json['razorpay_order_id'];
    razorpayPaymentId = json['razorpay_payment_id'];
    razorpaySignature = json['razorpay_signature'];
    refundStatus = json['refundStatus'];
    created = json['created'];
    updated = json['updated'];
    adminCancelStatus = json['admin_cancel_status'];
    packagetestId = json['packagetestId'];
    coupanVerifiedId = json['coupanVerifiedId'];
    paymentStatus = json['payment_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['vendorId'] = this.vendorId;
    data['userId'] = this.userId;
    data['appointmentId'] = this.appointmentId;
    data['patient_name'] = this.patientName;
    data['fathername'] = this.fathername;
    data['price'] = this.price;
    data['delivery_charge'] = this.deliveryCharge;
    data['age'] = this.age;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['address'] = this.address;
    data['date'] = this.date;
    data['time_slot'] = this.timeSlot;
    data['status'] = this.status;
    data['result_status'] = this.resultStatus;
    data['reason'] = this.reason;
    data['walkInCheck'] = this.walkInCheck;
    data['homeCollectionCheck'] = this.homeCollectionCheck;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['delivery_Status'] = this.deliveryStatus;
    data['payment_verify_status'] = this.paymentVerifyStatus;
    data['razorpay_order_id'] = this.razorpayOrderId;
    data['razorpay_payment_id'] = this.razorpayPaymentId;
    data['razorpay_signature'] = this.razorpaySignature;
    data['refundStatus'] = this.refundStatus;
    data['created'] = this.created;
    data['updated'] = this.updated;
    data['admin_cancel_status'] = this.adminCancelStatus;
    data['packagetestId'] = this.packagetestId;
    data['coupanVerifiedId'] = this.coupanVerifiedId;
    data['payment_status'] = this.paymentStatus;
    return data;
  }
}
