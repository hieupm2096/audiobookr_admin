import 'package:audiobookr_admin/commons/observers/simple_bloc_observer.dart';
import 'package:audiobookr_admin/features/app/app.dart';
import 'package:audiobookr_admin/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  configureDependencies();
  runApp(const App());
}
