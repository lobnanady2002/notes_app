import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
part 'add_notes_state.dart';
class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  Color color=Color(0xffE71D36);
  addNote(NoteModel note ) async{
    note.color = color.toARGB32();
    emit(AddNotesLoading());
   try{
     var notesBox = Hive.box<NoteModel>(kNotesBox);
     await notesBox.add(note);
     emit(AddNotesSuccess());
   }catch(e){
    emit( AddNotesFailure(e.toString()));
   }


  }

}