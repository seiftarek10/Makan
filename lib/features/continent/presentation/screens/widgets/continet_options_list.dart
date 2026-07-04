import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makan/features/continent/presentation/screens/widgets/continent_option_button.dart';

class ContinetOptionsList extends StatefulWidget {
  const ContinetOptionsList({super.key});

  @override
  State<ContinetOptionsList> createState() => _ContinetOptionsListState();
}

class _ContinetOptionsListState extends State<ContinetOptionsList> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ContinentOptionButton(isSelected: currentIndex == index),
            ),
          );
        },
      ),
    );
  }
}
