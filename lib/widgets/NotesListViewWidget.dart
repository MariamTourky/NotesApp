import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/widgets/NotesItemWidget.dart';

import '../models/NoteModel.dart';

class NotesListViewWidget extends StatelessWidget {
  const NotesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount:notes.length ,
              itemBuilder: (context, int) {
                return NoteItemWidget(
                  noteModel: notes[int],
                );
              }
          ),
        );
      },
    );
  }
}
