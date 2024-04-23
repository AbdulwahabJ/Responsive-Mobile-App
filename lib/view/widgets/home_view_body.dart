import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_app/view/widgets/adaptive_layout.dart';
import 'package:responsive_app/view/widgets/desktop_layout.dart';
import 'package:responsive_app/view/widgets/mobile_layout.dart';
import 'package:responsive_app/view/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      //
      child: AdaptiveLayout(
        mobileLayout: MobileLayout(),
        tabletLayout: TabletLayout(),
        desktopLayout: DesktopLayout(),
      ),
    );
  }
}
