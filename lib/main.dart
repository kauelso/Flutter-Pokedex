import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'App/Module/app_module.dart';
import 'App/Module/home/Presentation/app_widget.dart';


void main() {
  runApp(ModularApp(module: AppModule()));
}
