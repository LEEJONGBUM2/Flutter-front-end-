class Faq {
  String? question1;

  String? question2;
  String? question3;

  String? question4;
  String? question5;
  String? question6;

  Faq(
      {this.question1,
      this.question2,
      this.question3,
      this.question4,
      this.question5,
      this.question6});

  factory Faq.fromJson(Map<String, dynamic> json) {
    return Faq(
      question1: json['question1'],
      question2: json['question2'],
      question3: json['question3'],
      question4: json['question4'],
      question5: json['question5'],
      question6: json['question6'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question1'] = this.question1;
    data['question2'] = this.question2;
    data['question3'] = this.question3;
    data['question4'] = this.question4;
    data['question5'] = this.question5;
    data['question6'] = this.question6;

    return data;
  }
}
