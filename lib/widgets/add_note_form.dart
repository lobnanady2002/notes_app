import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cuibt/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';
class AddNotesForm extends StatefulWidget {
  const AddNotesForm({
    super.key,
  });

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {

  GlobalKey<FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;

  String? title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            onSaved: (value){
              title=value;

            },
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){
              subTitle=value;
            },
            maxLine: 5,
            hint: 'content',
          ),
          SizedBox(
            height: 32,
          ),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
                var noteModel=NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    data: DateTime.now().toString(),
                    color: Colors.blue.toARGB32(),
                   // color: Colors.blue.value
                    );
                  BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
              }else{
                autovalidateMode =AutovalidateMode.always;
                setState(() {

                });
              }
            },

          ),
          SizedBox(
            height: 30,
          ),

        ],

      ),
    );
  }
}
