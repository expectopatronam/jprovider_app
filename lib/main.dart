import 'package:flutter/material.dart';
import 'package:jprovider_app/home_page.dart';
import 'package:jprovider_app/list_provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => ListProvider(),)],
    child:const MaterialApp(home: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}