import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_list_view.dart';
class CustomViewBody extends StatefulWidget {
  const CustomViewBody({super.key});
  @override
  State<CustomViewBody> createState() => _CustomViewBodyState();
}
class _CustomViewBodyState extends State<CustomViewBody> {

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

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
            title: 'Notes',
            icon: Icons.search
          ),
          Expanded(
              child: NotesListView()),
        ],
      ),
    );
  }
}
