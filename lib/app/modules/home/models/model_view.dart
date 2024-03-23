class ViewModel {
  List<ViewM>? result;

  ViewModel({this.result});

  ViewModel.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = <ViewM>[];
      json['result'].forEach((v) {
        result!.add(ViewM.fromJson(v));
      });
    }
  }
}

class ViewM {
  String gender;
  String first;
  String last;
  String street;

  ViewM({
    required this.gender,
    required this.first,
    required this.last,
    required this.street,
  });

  factory ViewM.fromJson(Map<String, dynamic> json) => ViewM(
        gender: json['gender'],
        first: json['first'],
        last: json['last'],
        street: json['street'],
      );

  Map<String, dynamic> toJson() => {
        'gender': gender,
        'first': first,
        'last': last,
        'street': street,
      };
}
