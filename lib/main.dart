import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/SimpleBlocObserver.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/NoteModel.dart';
import 'package:notes_app/widgets/NotesAppMaterial.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());

  runApp(ScreenUtilInit(
    builder: (child,context)=>
        DevicePreview(
          enabled: false,
          builder:(context)=>const NotesApp(),
        ),
    minTextAdapt: true,
    splitScreenMode: true,
  ),);
}

