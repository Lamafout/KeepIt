// govnokod: on
import './user.dart';

class SessionInfo{
  bool isFind;
  bool isTimeUp;
  User currentUser;

  SessionInfo({required this.isFind, required this.isTimeUp, required this.currentUser});
}