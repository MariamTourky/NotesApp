
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/widgets/EditNoteColorlist.dart';
import '../cubits/note_cubit/note_cubit.dart';
import '../models/NoteModel.dart';
import 'CustomAppBar.dart';
import 'CustomTextFormField.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel noteModel;

  const EditNoteViewBody({Key? key,required this.noteModel}) : super(key: key);

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:  [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: (){
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = content ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              BlocProvider.of<NoteCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
              onChange: (value) {
                title = value;
              },
              hint: widget.noteModel.title),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChange: (value) {
              content = value;
            },
            hint: widget.noteModel.subTitle,
            maxLines: 5,
          ),
          EditNoteColorsList(note: widget.noteModel)
        ],
      ),
    );
  }
}

