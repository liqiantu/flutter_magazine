class BookModel {
  int? code;
  Null? message;
  List<BookDataModel>? data;

  BookModel({this.code, this.message, this.data});

  BookModel.fromJson(Map<String, dynamic> json) {
    code = json['Code'];
    message = json['Message'];
    if (json['Data'] != null) {
      data = <BookDataModel>[];
      json['Data'].forEach((v) {
        data!.add(new BookDataModel.fromJson(v));
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

class BookDataModel {
  String? iD;
  String? iSBN;
  String? name;
  String? author;
  String? publishName;
  String? pubDate;
  Null? keyword;
  Null? bookFormat;
  String? shortCode;
  String? language;
  List<BookTypesModel>? types;
  String? coverImage;
  Null? intro;

  BookDataModel(
      {this.iD,
      this.iSBN,
      this.name,
      this.author,
      this.publishName,
      this.pubDate,
      this.keyword,
      this.bookFormat,
      this.shortCode,
      this.language,
      this.types,
      this.coverImage,
      this.intro});

  BookDataModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    iSBN = json['ISBN'];
    name = json['Name'];
    author = json['Author'];
    publishName = json['PublishName'];
    pubDate = json['PubDate'];
    keyword = json['Keyword'];
    bookFormat = json['BookFormat'];
    shortCode = json['ShortCode'];
    language = json['Language'];
    if (json['Types'] != null) {
      types = <BookTypesModel>[];
      json['Types'].forEach((v) {
        types!.add(new BookTypesModel.fromJson(v));
      });
    }
    coverImage = json['CoverImage'];
    intro = json['Intro'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['ISBN'] = this.iSBN;
    data['Name'] = this.name;
    data['Author'] = this.author;
    data['PublishName'] = this.publishName;
    data['PubDate'] = this.pubDate;
    data['Keyword'] = this.keyword;
    data['BookFormat'] = this.bookFormat;
    data['ShortCode'] = this.shortCode;
    data['Language'] = this.language;
    if (this.types != null) {
      data['Types'] = this.types!.map((v) => v.toJson()).toList();
    }
    data['CoverImage'] = this.coverImage;
    data['Intro'] = this.intro;
    return data;
  }
}

class BookTypesModel {
  int? bookType;
  int? fileSize;
  String? getCode;

  BookTypesModel({this.bookType, this.fileSize, this.getCode});

  BookTypesModel.fromJson(Map<String, dynamic> json) {
    bookType = json['BookType'];
    fileSize = json['FileSize'];
    getCode = json['GetCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BookType'] = this.bookType;
    data['FileSize'] = this.fileSize;
    data['GetCode'] = this.getCode;
    return data;
  }
}
