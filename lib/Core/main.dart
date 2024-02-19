import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/Core/myAppState.dart';
import 'package:test_project/Widgets/myHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0x1216A1FF)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}




