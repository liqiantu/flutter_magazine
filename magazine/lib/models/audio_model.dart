class AudioModel {
  int? code;
  Null? message;
  List<AudioDataModel>? data;

  AudioModel({this.code, this.message, this.data});

  AudioModel.fromJson(Map<String, dynamic> json) {
    code = json['Code'];
    message = json['Message'];
    if (json['Data'] != null) {
      data = <AudioDataModel>[];
      json['Data'].forEach((v) {
        data!.add(new AudioDataModel.fromJson(v));
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

class AudioDataModel {
  String? iD;
  String? name;
  String? iCON;
  String? imageUrl;
  int? fileCount;
  int? size;
  int? duration;
  String? shortCode;
  String? intro;
  Null? actors;

  AudioDataModel(
      {this.iD,
      this.name,
      this.iCON,
      this.imageUrl,
      this.fileCount,
      this.size,
      this.duration,
      this.shortCode,
      this.intro,
      this.actors});

  AudioDataModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    iCON = json['ICON'];
    imageUrl = json['ImageUrl'];
    fileCount = json['FileCount'];
    size = json['Size'];
    duration = json['Duration'];
    shortCode = json['ShortCode'];
    intro = json['Intro'];
    actors = json['Actors'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Name'] = this.name;
    data['ICON'] = this.iCON;
    data['ImageUrl'] = this.imageUrl;
    data['FileCount'] = this.fileCount;
    data['Size'] = this.size;
    data['Duration'] = this.duration;
    data['ShortCode'] = this.shortCode;
    data['Intro'] = this.intro;
    data['Actors'] = this.actors;
    return data;
  }
}
