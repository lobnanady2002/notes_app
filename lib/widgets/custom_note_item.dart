import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFECC80),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text("Flutter Tips",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,

              ),
            ),
            subtitle:  Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text("Build your career with tharwat samy",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withValues(alpha: .7),
                ),
              ),
            ),
            trailing: IconButton(onPressed: (){},
                icon: Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text("May,21,2022",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withValues(alpha: .7),

              ),
            ),
          ),
        ],

      ),
    );
  }
}
