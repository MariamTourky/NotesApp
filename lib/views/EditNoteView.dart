import 'package:flutter/material.dart';
import '../widgets/EditNoteViewBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);
  static String routeName='/edit_note_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          icon:Icon(Icons.arrow_back_ios),
          onPressed:() {Navigator.pop(context);},
        ),
      ),
      body: EditNoteViewBody(),
    );
  }
}