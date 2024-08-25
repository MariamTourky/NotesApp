import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/NotesItemWidget.dart';

class NotesListViewWidget extends StatelessWidget {
  const NotesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
          itemBuilder: (context,int) {
            return NoteItemWidget();
          }
          ),
    );
  }
}
