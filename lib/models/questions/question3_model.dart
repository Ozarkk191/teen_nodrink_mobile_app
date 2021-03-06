import '../body_parameters.dart';

class Question3Model extends RequestBodyParameters {
  int? userId;
  int? q1;
  int? q21;
  int? q22;
  int? q23;
  String? q2Answer;
  int? q3;
  int? q4;
  int? q5;
  int? q6;
  int? q7;
  int? q8;
  int? q9;
  int? q10;
  int? total;
  String? type;

  Question3Model({
    this.userId,
    this.q1 = 0,
    this.q21 = 0,
    this.q22 = 0,
    this.q23 = 0,
    this.q2Answer = "",
    this.q3 = 0,
    this.q4 = 0,
    this.q5 = 0,
    this.q6 = 0,
    this.q7 = 0,
    this.q8 = 0,
    this.q9 = 0,
    this.q10 = 0,
    this.total = 0,
    this.type = "",
  });

  Question3Model.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    q1 = json['q1'];
    q21 = json['q2_1'];
    q22 = json['q2_2'];
    q23 = json['q2_3'];
    q2Answer = json['q2_answer'];
    q3 = json['q3'];
    q4 = json['q4'];
    q5 = json['q5'];
    q6 = json['q6'];
    q7 = json['q7'];
    q8 = json['q8'];
    q9 = json['q9'];
    q10 = json['q10'];
    total = json['total'];
    type = json['type'];
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['q1'] = q1;
    data['q2_1'] = q21;
    data['q2_2'] = q22;
    data['q2_3'] = q23;
    data['q2_answer'] = q2Answer;
    data['q3'] = q3;
    data['q4'] = q4;
    data['q5'] = q5;
    data['q6'] = q6;
    data['q7'] = q7;
    data['q8'] = q8;
    data['q9'] = q9;
    data['q10'] = q10;
    data['total'] = total;
    data['type'] = type;
    return data;
  }
}
