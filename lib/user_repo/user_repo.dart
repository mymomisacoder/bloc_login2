import 'dart:async';

import 'package:meta/meta.dart';


class UserRepository {

  String username1;


  Future<String> authenticate({
    @required String username,
    @required String password,
  }) async {
    await Future.delayed(Duration(seconds: 1));
    username1 = username;
    return 'token';
  }

  Future<void> deleteToken() async {
    /// delete from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<void> persistToken(String token) async {
    /// write to keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  Future<bool> hasToken() async {
    /// read from keystore/keychain
    await Future.delayed(Duration(seconds: 1));
    return false;
  }

  Future<String> getUserName() async {
    await Future.delayed(Duration(seconds: 1));
    return username1;
  }

  setuserName(String username)  {
    username1 = username;
  }
}