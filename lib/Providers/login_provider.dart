import 'package:flutter/foundation.dart';
import 'package:ora_app/Models/userModel.dart';
import 'package:ora_app/Network/API.dart';
import 'package:ora_app/Util/session_manager.dart';
import 'package:provider/provider.dart';

class LogInProvider with ChangeNotifier {
  bool loading = false;

  API api = API();

  SessionManager sessionManager = SessionManager();

  Future<bool> logIn(String email, String password) async {
    setLoading(true);
    try {

      //Todo DAta Connection Checker
      UserModel user = await api.login(email, password);
      if (user != null) {
        sessionManager.setAuthToken(user.accessToken);
        sessionManager.setUserID(user.userId.toString());
        setLoading(false);

        return true;
      }

      setLoading(false);
      return false;
    } catch (e) {
      setLoading(false);
      return false;
    }
  }

  void setLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  bool isLoading() {
    return loading;
  }

}
