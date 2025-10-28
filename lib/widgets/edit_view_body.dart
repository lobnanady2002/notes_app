import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

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
            title: 'Edit view',
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
