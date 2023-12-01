import 'dart:math';

import 'package:flutter/material.dart';

class PullToRefreshApp extends StatefulWidget {
  const PullToRefreshApp({super.key});

  @override
  State<PullToRefreshApp> createState() => _PullToRefreshAppState();
}

class _PullToRefreshAppState extends State<PullToRefreshApp> {
  List<String> data = [
    'Python',
    'Dart',
    'Java',
    'CSS5',
    'HTML',
    'C++',
    'C',
    'Php',
    'JavaScript',
    'Flutter',
    'React Native',
  ];
  
  Future<void> newdata()async{
    data.clear();
    await Future.delayed(Duration(seconds: 4),(){
      setState(() {
        data=mynewdata;
      });
    });
  }
  String get randomnumber=>Random().nextInt(1000).toString();
  List<String> get mynewdata=>List.generate(15, (index) => 'Data Number - $randomnumber');
  
  GlobalKey<RefreshIndicatorState> refreshkey=GlobalKey<RefreshIndicatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pull To Refresh App',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          refreshkey.currentState!.show();
        },
        child: const Icon(
          Icons.replay,
        ),
      ),
    body: RefreshIndicator(
      key: refreshkey,
      onRefresh: newdata,
      color: Colors.white,
      backgroundColor: Colors.purple,
      displacement: 100,
      edgeOffset: 100,
      strokeWidth: 5,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder:(context, index) {
        return ListTile(title: Text(data[index]),);
      },),
    ),
    );
  }
}