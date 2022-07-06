class MagModel {
  int? code;
  Null? message;
  List<MagDataModel>? data;

  MagModel({this.code, this.message, this.data});

  MagModel.fromJson(Map<String, dynamic> json) {
    code = json['Code'];
    message = json['Message'];
    if (json['Data'] != null) {
      data = <MagDataModel>[];
      json['Data'].forEach((v) {
        data!.add(new MagDataModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Code'] = this.code;
    data['Message'] = this.message;
    if (this.data != null) {
      data['Data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MagDataModel {
  String? iD;
  String? iSSN;
  String? name;
  int? year;
  int? issue;
  int? cycle;
  String? shortCode;
  List<MagTypesModel>? types;
  List<String>? coverImages;
  String? intro;

  MagDataModel(
      {this.iD,
      this.iSSN,
      this.name,
      this.year,
      this.issue,
      this.cycle,
      this.shortCode,
      this.types,
      this.coverImages,
      this.intro});

  MagDataModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    iSSN = json['ISSN'];
    name = json['Name'];
    year = json['Year'];
    issue = json['Issue'];
    cycle = json['Cycle'];
    shortCode = json['ShortCode'];
    if (json['Types'] != null) {
      types = <MagTypesModel>[];
      json['Types'].forEach((v) {
        types!.add(new MagTypesModel.fromJson(v));
      });
    }
    coverImages = json['CoverImages'].cast<String>();
    intro = json['Intro'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['ISSN'] = this.iSSN;
    data['Name'] = this.name;
    data['Year'] = this.year;
    data['Issue'] = this.issue;
    data['Cycle'] = this.cycle;
    data['ShortCode'] = this.shortCode;
    if (this.types != null) {
      data['Types'] = this.types!.map((v) => v.toJson()).toList();
    }
    data['CoverImages'] = this.coverImages;
    data['Intro'] = this.intro;
    return data;
  }
}

class MagTypesModel {
  int? magazineType;
  int? fileSize;
  String? getCode;

  MagTypesModel({this.magazineType, this.fileSize, this.getCode});

  MagTypesModel.fromJson(Map<String, dynamic> json) {
    magazineType = json['MagazineType'];
    fileSize = json['FileSize'];
    getCode = json['GetCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MagazineType'] = this.magazineType;
    data['FileSize'] = this.fileSize;
    data['GetCode'] = this.getCode;
    return data;
  }
}
