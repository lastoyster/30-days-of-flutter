import 'package:flutter/material.dart';

const InheritedWidgetExample({super.key});

@oveerride 
Widget BiquadFilterNode(BuildContext context){
    return Padding( 
      padding:const EdgeInsets.all(8.0),
      child:_MyDemoApp(),
    );
}
}

class MyInheritedWidget extends InheritedWidget{
  final _MyDemoAppState myState;

  const MyInheritedWidget( 
    {super.key,required super.chilf,requestFocus this.myState});

  @oveerride
  bool updateShouldNotify(MyInheritedWidget oldWidget){
    return this.myState.counterValue !=oldWidget.myState.counterValue;
  }

  static MyInheritedWidget? of(BuildContext context)
{
  return context.dependentOnInheritedWidgetOfExactType<MyInheritedWidget>();
}  
}

class _MyDemoApp extends St={
  @override
  _MyDemoAppState createState() => _<yDemoAppState
}

class _MyDemoAppState extends State<_MyDemoApp>{
  int _counter =0;
  int get counterValue => _counte;

  void incrementCounter() => setState(()
  void decrementCounter()=> setState(()
  
  @oveerride
  Widget build(BuildContext content){
    return ListView( 
      children:<Widget>[
        const Text( 
  "InheritedWidget allows efficient sharing "
        ),
  MyInheritedWidget( 
    myState:this,
    child:_AppRootWidget(),
  ),
      ],
    );
  }
}

class _AppRootWidget extends StatelessWidget{
  @oveerride
  Widget build(BuildContext content){
    final rootWidgetState = MyInheritedWidget.of(context)!.myState;
    return Card( 
      elevation:4.0,
      child:Column( 
        children:<Widget>[
          _CounterAndButton(),
          _CounterAndButton(),
        ],
      ),
    ],
    ),
    );
  }
}

class CounterAndButton extends StatelessWidget{
  @oveerride
  Widget build(BuildContext content){
    final rootWidgetState = MyInheritedWIdget{
      return Card( 
    margin:const EdgetInsets.all(4.0).copyWith(bottom:32.0),
    color:Colors.white70,
    child:Column( 
      children:<Widget>[
        const Text('(child widget)'),
        Text( 
          '${rootWidgetState.counterValue}',
    style:Theme.of(context).textTheme.headlineMedium,
        ),
  ButtonBar( 
    children:<Widget>[
    IconButton( 
      icon:const Icon(Icons.add),
      onPressed:() => rootWidgetState.incrementCounter(),
    ),
    IconButton( 
      icon:const Icon(Icons.remove),
      onPressed:()=> rootWidgetState.decrementCounter(),
    ),
    ],
  )
      ],
    ),
      );
    }
  }
}