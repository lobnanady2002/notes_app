import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.cyanAccent,
        shape: const CircleBorder(),
        child: const Icon(Icons.add,color: Colors.black,),
      ),
      body: const CustomViewBody(),
    );
  }
}
