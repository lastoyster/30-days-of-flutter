 import 'package:flutter/material.dart';
 import 'package:skelton/news_page.dart';

 void main(){
  runApp(const MyApp());
 }

 class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key:key);

  

  @override
  Widget build(BuildContext context){
    return MaterialApp( 
      title:'Flutter Lazy Loading',
      theme:ThemeData( 
        primarySwatch:Colors.blue,
      ),
      home:const NewsPage(),
    );
        }
 }