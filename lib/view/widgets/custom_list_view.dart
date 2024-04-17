import 'package:flutter/material.dart';
import 'package:responsive_app/view/widgets/custom_item2.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return  const Padding(
          padding: EdgeInsets.only(top: 16),
          child: CustomItem2(),
        );
      },
      itemCount: 5,
    );
  }
}

