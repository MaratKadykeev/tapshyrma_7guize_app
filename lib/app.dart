import 'package:flutter/material.dart';
import 'package:tapshyrma_7guize_app/Pages/firstPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.blueGrey,
      ),
      home: const FirsPage(),
    );
  }
}
