import 'package:flutter/material.dart';
import 'package:login/src/blocs/login_bloc.dart';
export 'package:login/src/blocs/login_bloc.dart';

class Provider extends InheritedWidget{

  // Patrón singleton
  static Provider _instancia;

  factory Provider({Key key, Widget child}){

    // Si no hay una instancia de Provider
    if ( _instancia == null ){
      // Crea una
      _instancia = new Provider._internal( key: key, child: child);
    }
    // Si existe, retorna la instancia
    return _instancia;

  } 

  // Constructor
  Provider._internal({ Key key, Widget child })
    : super(key: key, child: child);



  // MI BLOC
  final loginBloc = LoginBloc();



  // Poner true
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    
    return true;
  }

  //* Crear método of que me retorna mi instancia de arriba del LoginBloc
  static LoginBloc of(BuildContext context){

    return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;

  }




}