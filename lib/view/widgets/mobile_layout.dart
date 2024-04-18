import 'package:flutter/material.dart';
import 'package:responsive_app/view/widgets/custom_list_view.dart';
import 'package:responsive_app/view/widgets/custom_sliver_gride.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CustomeSliverGride(),
        CustomSliverListView(),
      ],
    );
  }
}
