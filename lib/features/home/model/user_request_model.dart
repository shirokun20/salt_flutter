class UserRequestModel {
  int? page;

  UserRequestModel({this.page});

  UserRequestModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page'] = page;
    return data;
  }
}