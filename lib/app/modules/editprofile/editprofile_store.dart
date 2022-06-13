import 'package:mobx/mobx.dart';

part 'editprofile_store.g.dart';

class EditprofileStore = _EditprofileStoreBase with _$EditprofileStore;
abstract class _EditprofileStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}