import 'package:flutter/material.dart';
import 'package:responsive_app/view/widgets/custom_item.dart';

class CustomeSliverGride extends StatelessWidget {
  const CustomeSliverGride({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 13,
        mainAxisSpacing: 13,
      ),
      itemBuilder: (context, index) {
        return const CustomItem();
      },
      itemCount: 4,
    );
  }
}
