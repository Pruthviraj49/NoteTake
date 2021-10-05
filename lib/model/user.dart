class User {
  String _userName = "username";
  String _password = "pasword";

  User(this._userName, this._password);

  User.map(dynamic obj) {
    this._userName = obj["username"];
    this._password = obj["password"];
  }

  String get username => _userName;
  String get password => _password;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["username"] = _userName;
    map["password"] = _password;
    return map;
  }
}
