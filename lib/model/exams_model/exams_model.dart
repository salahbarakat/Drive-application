class ExamsModel {
  String? code;
  String? message;
  List<ExamsData>? data;

  ExamsModel({this.code, this.message, this.data});

  ExamsModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <ExamsData>[];
      json['data'].forEach((v) { data!.add(new ExamsData.fromJson(v)); });
    }
  }


}

class ExamsData {
  int? id;
  String? examSubject;
  String? examDate;
  String? examStartTime;
  String? examEndTime;
  bool? isFinal;

  ExamsData({this.id, this.examSubject, this.examDate, this.examStartTime, this.examEndTime, this.isFinal});

  ExamsData.fromJson(Map<String, dynamic> json) {
  id = json['id'];
  examSubject = json['examSubject'];
  examDate = json['examDate'];
  examStartTime = json['examStartTime'];
  examEndTime = json['examEndTime'];
  isFinal = json['isFinal'];
  }


}