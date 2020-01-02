class VendorsResult {
  List<Vendors> vendors;

  VendorsResult({this.vendors});

  VendorsResult.fromJson(Map<String, dynamic> json) {
    if (json['vendors'] != null) {
      vendors = new List<Vendors>();
      json['vendors'].forEach((v) {
        vendors.add(new Vendors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.vendors != null) {
      data['vendors'] = this.vendors.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Vendors {
  String name;
  String address;
  String phoneNumber;

  Vendors({this.name, this.address, this.phoneNumber});

  Vendors.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    phoneNumber = json['phone_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['phone_number'] = this.phoneNumber;
    return data;
  }
}
