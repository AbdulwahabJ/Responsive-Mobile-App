import 'package:flutter/material.dart';
import 'package:responsive_app/view/widgets/custom_drawer.dart';
import 'package:responsive_app/view/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  //
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDBDBDB),
      appBar: MediaQuery.sizeOf(context).width - 32 < 900
          ? AppBar(
              backgroundColor: Colors.black,
              leading: GestureDetector(
                onTap: () {
                  scaffoldkey.currentState!.openDrawer();
                },
                child: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      body: const HomeViewBody(),
    );
  }
}
