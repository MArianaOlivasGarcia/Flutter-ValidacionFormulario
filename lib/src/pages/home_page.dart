
import 'package:flutter/material.dart';
import 'package:login/src/blocs/provider.dart';

class HomePage extends StatelessWidget {
  
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
  
    final bloc = Provider.of(context);
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              
            Text('Email: ${ bloc.email }'),

            Divider(),

            Text('Password: ${ bloc.password }')
          
          ],
      ),
    );
  }
}