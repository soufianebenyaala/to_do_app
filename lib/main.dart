import 'package:flutter/material.dart';
import 'package:todo_app/utils/app_route.dart';
import 'package:todo_app/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoute.router,
      title: 'TODO APP',
      themeMode: ThemeMode.system,
      darkTheme: MaterialTheme.dark(),
      theme: MaterialTheme.light(),
    );
  }
}
