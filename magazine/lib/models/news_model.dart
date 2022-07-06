class NewsModel {
  int? code;
  Null? message;
  List<NewsDataModel>? data;

  NewsModel({this.code, this.message, this.data});

  NewsModel.fromJson(Map<String, dynamic> json) {
    code = json['Code'];
    message = json['Message'];
    if (json['Data'] != null) {
      data = <NewsDataModel>[];
      json['Data'].forEach((v) {
        data!.add(new NewsDataModel.fromJson(v));
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

class NewsDataModel {
  String? iD;
  String? cN;
  String? pubDate;
  String? name;
  String? codeName;
  String? shortCode;
  String? coverImgURL;
  int? layoutCount;
  int? articleCount;
  String? province;
  String? publisher;
  int? cycle;
  Null? language;
  String? intro;

  NewsDataModel(
      {this.iD,
      this.cN,
      this.pubDate,
      this.name,
      this.codeName,
      this.shortCode,
      this.coverImgURL,
      this.layoutCount,
      this.articleCount,
      this.province,
      this.publisher,
      this.cycle,
      this.language,
      this.intro});

  NewsDataModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    cN = json['CN'];
    pubDate = json['PubDate'];
    name = json['Name'];
    codeName = json['CodeName'];
    shortCode = json['ShortCode'];
    coverImgURL = json['CoverImgURL'];
    layoutCount = json['LayoutCount'];
    articleCount = json['ArticleCount'];
    province = json['Province'];
    publisher = json['Publisher'];
    cycle = json['Cycle'];
    language = json['Language'];
    intro = json['Intro'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CN'] = this.cN;
    data['PubDate'] = this.pubDate;
    data['Name'] = this.name;
    data['CodeName'] = this.codeName;
    data['ShortCode'] = this.shortCode;
    data['CoverImgURL'] = this.coverImgURL;
    data['LayoutCount'] = this.layoutCount;
    data['ArticleCount'] = this.articleCount;
    data['Province'] = this.province;
    data['Publisher'] = this.publisher;
    data['Cycle'] = this.cycle;
    data['Language'] = this.language;
    data['Intro'] = this.intro;
    return data;
  }
}
