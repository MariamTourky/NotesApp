import 'package:flutter/material.dart';
import '../models/NoteModel.dart';
import '../widgets/EditNoteViewBody.dart';

class EditNoteView extends StatelessWidget {
  final NoteModel noteModel;
  const EditNoteView({Key? key, required this.noteModel}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          icon:Icon(Icons.arrow_back_ios),
          onPressed:() {Navigator.pop(context);},
        ),
      ),
      body: EditNoteViewBody(noteModel: noteModel,),
    );
  }
}