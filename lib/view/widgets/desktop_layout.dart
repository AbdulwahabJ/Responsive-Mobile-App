import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_app/view/widgets/custom_desktop_widget.dart';
import 'package:responsive_app/view/widgets/custom_drawer.dart';
import 'package:responsive_app/view/widgets/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TabletLayout(),
            )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: CustomDesktopWidget(),
        ))
      ],
    );
  }
}
