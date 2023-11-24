import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButton extends StatefulWidget{
  const LikeButtonExample({super.key});

  @override
  State<LikeButtonExample> createState() => _LikeButtonExampleState();
}

class _LikeButtonExampleState extends State<LikeButtonExample>{
  final GlobalKey<LikeButtonState> _key = GlobalKey<LikeButtonExampleState>();
@override
Widget build(BuildContext context)
return ListView
padding:const EdgeInsets.all(8),
children:[
  Text('A bare like button:'),
  LikeButton(key:_key),
  Divider(),
  Text('Like button with count and count:'),
LikeButton( 
  likeBuilder: (isLiked)=> Icon(Icons.thumb_up),
  likeCount:996,
  isLiked:null,
  countBuilder:(likeCount,isLiked,text){
    if(likeCount== 0){
      return Text('like');
    }else{
      return Text(
        likeCount! >=1000
        ? '${(likeCount/1000.0).toStringAsFixed(1)}k'
        :text,
      );
    }
  },
),
Divider(),

ListTile(
  leading:FittedBox(child:LikeButton()),
  title:Text('like button in like tile'),
  subtitle:Text('Must wrap it in FittedBox'),
),
Divider(),
ListTile(
  title:Text('use global key to mutate like state elsewhere'),
  subtitle:Text("click button below to toggle the first like button's state"),
),
ElevatedButton( 
  onPressed:()=> _key.currentState?.onTap(),
  child:Text('toggle'),
      ),
}

