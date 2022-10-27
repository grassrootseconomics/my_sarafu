class SarafuModel {
  String? date;
  List<Data>? data;

  SarafuModel({this.date, this.data});

  SarafuModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? title;
  String? subtitle;
  String? trailing;
  bool? isSent;

  Data({this.title, this.subtitle, this.trailing, this.isSent});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    trailing = json['trailing'];
    isSent = json['isSent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['trailing'] = this.trailing;
    data['isSent'] = this.isSent;
    return data;
  }
}
