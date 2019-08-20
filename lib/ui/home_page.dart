import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_login/auth/auth_event.dart';
import 'package:bloc_login/auth/auth_bloc.dart';

import 'package:bloc_login/login/login_event.dart';
import 'package:bloc_login/login/login_bloc.dart';

import 'package:bloc_login/ui/home_page.dart';

import 'package:bloc_login/ui/login_form.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc authenticationBloc =
    BlocProvider.of<AuthenticationBloc>(context);

    final LoginBloc loginBloc = BlocProvider.of<LoginBloc>(context);

    //String username2 = loginBloc.usernamebloc;
    String username2 = loginBloc.userRepository.getUserName().toString();
    print("$username2");

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
              child: Text('logout'),
              onPressed: () {
                authenticationBloc.dispatch(LoggedOut());
                },
              ),

              Center(
                child: Text("Hello"),
                //child: Text("$username2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}