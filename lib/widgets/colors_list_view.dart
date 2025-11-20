import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color,});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ? CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 33,
        backgroundColor: color,),
    )
        : CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}


class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors=[
    Color(0xffA57548),
    Color(0xffFCD7AD),
    Color(0xffF6C28B),
    Color(0xff5296A5),
    Color(0xff82DDF0),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: (){
                  currentIndex=index;
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: colors[index],
                ),
              ),
            );
      }
      ),
    );
  }
}

