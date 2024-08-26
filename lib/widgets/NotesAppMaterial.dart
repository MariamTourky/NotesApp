import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit.dart';
import '../views/EditNoteView.dart';
import '../views/NotesView.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider(create: (context)=>AddNoteCubit(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Poppins'),

        initialRoute: NotesView.routeName,
        routes: {
          NotesView.routeName:(context) => NotesView(),
          EditNoteView.routeName:(context) => EditNoteView(),

        },
      ),
    );

  }
}
