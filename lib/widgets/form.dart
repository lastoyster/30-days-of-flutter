import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
    const FormWidget({Key?key}):super(key:key);

    @override
    _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget>{
    String firstname='';
  String lastname = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  //----------------FUNCTIONS------------------
  trysubmit() {
    final isvalid =_formKey.currentState!.validate();
    if(isvalid){
        _formKey.currentState!.save();
        submitform();
    }else{
        print('Error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
            title: Text('Form'),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Form(
                key:_formKey,
                child:Column(children:[
                    TextFormField(
                        decoration:InputDecoration(hintText:)
                        key:ValueKey(firstname),
                        validator:(value){
                if(value.toString().isEmpty){
                    return 
                }else{
                    return null;
                }
              },
              onSaved:(value){
                firstname = value.toString();
              },
                    ),
                    TextFormField(
                        decoration:InputDecoration(hintText:)
                        key:ValueKey(lastname)
                        validator:(value){
                            if(value.toString().isEmpty){
                    return 'Last Name should not be Empty';
                      } else {
                        return null;
                      }
                    },
                    onSaved:(value){
                        lastname = value.toString();
                    },
                    );
                        }
                    )
                ])
        )
    )
  }
    }
}