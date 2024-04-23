import 'package:flutter/material.dart';
import 'package:responsive_app/view/widgets/custom_item2.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          itemCount: 15,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: AspectRatio(aspectRatio: 1, child: CustomItem2()),
            );
          },
        ),
      ),
    );
  }
}
