import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_colors_list.dart';
import '../models/note_model.dart';
class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key,required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title,content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: (){
              widget.note.title = (title == null || title!.isEmpty)
                  ? widget.note.title
                  : (title)!;
              widget.note.subTitle = (content == null || content!.isEmpty)
                  ? widget.note.subTitle
                  : (content)!;
            /*  widget.note.title = title ?? widget.note.title;
              widget.note.subTitle=content ?? widget.note.subTitle;*/
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit view',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChanged: (value){
              title=value;

            },
              hint: widget.note.title),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value){
              content=value;
            },

            hint: widget.note.subTitle
            ,maxLine: 5,
          ),
          SizedBox(
            height: 30,
          ),
          EditNoteColorsList(note: widget.note,),
        ],
      ),
    );
  }
}

