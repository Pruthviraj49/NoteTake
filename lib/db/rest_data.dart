import 'package:notes/widget/network_util.dart';
import 'package:notes/model/user.dart';

class RestData {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "";
  static final LOGIN_URL = BASE_URL + "/";

  Future<User?> login(String username, String password) async {
    return null;
  }
}
