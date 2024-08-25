import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/AddNoteBottomSheet.dart';
import 'package:notes_app/widgets/NotesViewBodyWidget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String routeName='/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBodyWidget(),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.blueGrey,
        onPressed: (){
          showModalBottomSheet(
            context: context,
            builder: (context){
            return AddNoteBottomSheet();
          },

          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

