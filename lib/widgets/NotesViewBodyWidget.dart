import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/widgets/NotesListViewWidget.dart';

import '../cubits/note_cubit/note_cubit.dart';
import 'CustomAppBar.dart';

class NotesViewBodyWidget extends StatefulWidget {
  const NotesViewBodyWidget({super.key});

  @override
  State<NotesViewBodyWidget> createState() => _NotesViewBodyWidgetState();
}

class _NotesViewBodyWidgetState extends State<NotesViewBodyWidget> {

  void initState() {
    super.initState();
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children:[
          SizedBox(
            height: 20.h,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(child: NotesListViewWidget()),

        ]

      ),
    );
  }
}
