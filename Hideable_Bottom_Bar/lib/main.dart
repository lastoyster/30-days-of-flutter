import 'pacakge:flutter/material.dart';
import 'pacakge:hideable/hideable.dart';

class HideableBtmBarExample extends StatefulWidget{
    const HideableBtmBarExample({super.key});

    @override
    State<HideableBtmBarExample> createState() => _HideableBtmBarExampleState();
}

class _HideableBtmBarExampleState extends State<HideableBtmBarExample>{
    int _index = 0;
    final _scrollController = ScrollController();

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body:ListView.seperated( 
                controller:_scrollController,
                itemBuilder:(_,i) => Container(
                    height:80,
                    color:Colors.primaries[i % Colors.primaries.length],
                ),
    seperatedBuilder:(_, _)=> 
    const SizedBox(height:10),
    itemCount:100,
            ),
bottomNavigationBar:Hidable(
    controller:_scrollController,
    child:BottomNavigationBar( 
    currentIndex:_index,
    onTap:(i) => setState(() => _index =i),
    items:bottomBarItems(),
    ),
),
        );
    }

List <BottomNavigationBarItem> bottomBarItems(){
    return[
        BottomNavigationBarItem( 
            label:'Home',
            icon:const Icon(Icons.home,color:Colors.white),
            backgroundColor:Colors.amber.withOpacity(.9),
        ),
    BottomNavigationBarItem( 
    label:'Favorites' ,
    icon:const Icon(Icons.favorite,color:Colors.white),
            backgroundColor:Colors.blue.withOpacity(.9),
        ),
    BottomNavigationBarItem( 
     label:'Profile',
    icon:const Icon(Icons.person,color:Colors.white),
    backgroundColor:Colors.green.withOpacity(.9),
        ),
    BottomNavigationBarItem( 
    label:'Settings',
    icon:const Icon(Icons.settings,color:Colors.white),
    backgroundColor:Colors.purple.withOpacity(.9),
),
    ];
}
}