import 'package:mobx/mobx.dart';

part 'userM_store.g.dart';

class UserMStore = _UserMStoreBase with _$UserMStore;
abstract class _UserMStoreBase with Store {

  @observable
  String name = '';

  @observable
  String pass = '';

  @observable 
  String email = '';

  @action 
  changeName(String value) => name = value;

  @action 
  changePass(String value) => pass = value;

  
  
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {"nome": name, "email": email};
    return map;
  }
  
}