class User{
  // values
  int _id = 0;
  String _username = '';
  String _tg = '';
  String _email = '';
  String _avatar = '';
  //TODO ref code

  // getters and setters
  int get id {return _id;}
  String get username {return _username;}
  String get telegram {return _tg;}
  String get email {return _email;}
  String get avatar {return _avatar;}
  set id (int value) => _id = value;
  set username (String value) => _username = value;
  set telegram (String value) => _tg = value;
  set email (String value) => _email = value;
  set avatar (String value) => _avatar = value;

  //constructor 
  User(this._id, this._username, this._tg, this._email, this._avatar);
  User.empty(){
    this._id = -1;
    this._username = '';
    this._tg = '';
    this._email = '';
    this._avatar = '';
  }
}