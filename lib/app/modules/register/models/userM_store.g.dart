// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userM_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserMStore on _UserMStoreBase, Store {
  late final _$nameAtom = Atom(name: '_UserMStoreBase.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$passAtom = Atom(name: '_UserMStoreBase.pass', context: context);

  @override
  String get pass {
    _$passAtom.reportRead();
    return super.pass;
  }

  @override
  set pass(String value) {
    _$passAtom.reportWrite(value, super.pass, () {
      super.pass = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_UserMStoreBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$_UserMStoreBaseActionController =
      ActionController(name: '_UserMStoreBase', context: context);

  @override
  dynamic changeName(String value) {
    final _$actionInfo = _$_UserMStoreBaseActionController.startAction(
        name: '_UserMStoreBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$_UserMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePass(String value) {
    final _$actionInfo = _$_UserMStoreBaseActionController.startAction(
        name: '_UserMStoreBase.changePass');
    try {
      return super.changePass(value);
    } finally {
      _$_UserMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
pass: ${pass},
email: ${email}
    ''';
  }
}
