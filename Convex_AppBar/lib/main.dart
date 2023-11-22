import 'dart:html';

import 'package:covex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

const _Kpages= <String, IconData>{
  home:Icons.home,
  map:Icons.map, 
  add:Icons.add, 
  message:Icons.message,
  people:Icons.people,
};

class _ConvexAppExample extends StatefulWidget {
  const ConvexAppExample({super.key)};

  @override
_ConvexAppExample  createstate() => _ConvexAppExampleState();
  TabStyle _tabStyle =TabStyle.reactCircle;

  @override
  Widget build(BuildContext context){
    return DefaultTabController ( 
      length:5,
      initialIndex:2,
      child:Scaffold( 
        body:Column ( 
        children:[
    _buildStyleSelector(),
     const Divider(),
     Expanded( 
      child:TabBarView( 
        children: [
          for(final icon in _Kpages.values)
          Icon(icon,size:64),
        ],
      ),
     ),
        ],
    ),
    bottomNavigationBar: ConvexAppBar.badge( 
      //optional badge argument:keys are tab indices, values can be 
      //String, IconData, color or widget
      const <int, dynamic>{3:99+},
      style:_tabStyle,
      items:<TabItem>[
        for(final entry in _kpages.entries)
        TabItem(icon:entry.value,title:entry.key),
      ],
  onTap:(int i) => print('click index=$i'),   
    ),
      ),
    );
}

//select style enum from dropdown menu:
Widget _buildStyleSelector(){
  final dropdown = DropdownButton<TabStyle>( 
    value:_tabStyle,
    onChanged:(newStyle){
      if(newStyle !=null) 
      setState(() =>_tabStyle=newStyle);
    },
    items:[
      for(final style in TabStyle.values)
      DropdownMenuItem( 
        value:style,
        child:Text(style.toString()),
      )
    ],
  );
return ListTile ( 
  contentPadding:const EdgeInsets.all(8),
  title:const Text('appBar style:'),
  trailing:dropdown,
);
}


