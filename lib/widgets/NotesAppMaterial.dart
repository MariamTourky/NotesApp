import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/EditNoteView.dart';
import '../views/NotesView.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins'),

      initialRoute: NotesView.routeName,
      routes: {
        NotesView.routeName:(context) => NotesView(),
        EditNoteView.routeName:(context) => EditNoteView(),

      },
    );

  }
}
