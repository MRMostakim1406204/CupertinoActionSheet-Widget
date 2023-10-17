import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePagetState();
}

class _HomePagetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final action = CupertinoActionSheet(
      title: Text("Which Colour Do You Like?"),
      message: Text("Select the item you like"),
      actions: [
        CupertinoActionSheetAction(
          onPressed: (){
            print("Pink is selected");
            Navigator.pop(context);
          }, child: Text("Pink")),

        CupertinoActionSheetAction(
          onPressed: (){
             print("Red is selected");
            Navigator.pop(context);
          }, child: Text("Red")),

        CupertinoActionSheetAction(
          onPressed: (){
             print("Black is selected");
            Navigator.pop(context);
          }, child: Text("Black")),

        CupertinoActionSheetAction(
          onPressed: (){
             print("White is selected");
            Navigator.pop(context);
          }, child: Text("White")),
      ],
      cancelButton: CupertinoActionSheetAction(
        
        child: Text("Cancel",style: TextStyle(
          color: Colors.deepOrange
        ),),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
    

    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoActionSheet"),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(onPressed: (){
          showCupertinoModalPopup(context: context, builder: (context)=>action);
        }, child: Text("Click Here",style: TextStyle(
          fontSize: 20,color: Colors.pink,
        ),)),
      ),
    );
  }
}