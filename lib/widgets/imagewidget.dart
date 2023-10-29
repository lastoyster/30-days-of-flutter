import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(BuildContext context){
        body:Center(
            child:Container(
            height:300,
            width:250,
            decoration:BoxDecoration(
            boxShadow:[
                boxShadow(blurRadius:10,
                color:Colors.black,spreadRadius:5)
            ],
        image:DecorationImage(
            image:NetworkImage(
                 'https://m.media-amazon.com/images/M/MV5BMGIzZmQ4YmUtZGQ4NC00OTkyLWE1MGUtMTQ3N2Y3N2E2NWEyXkEyXkFqcGdeQXVyODAzNzAwOTU@._V1_UY1200_CR85,0,630,1200_AL_.jpg',
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(20)),
            )),
        );
        }

  }