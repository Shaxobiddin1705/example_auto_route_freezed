import 'package:auto_route/auto_route.dart';
import 'package:example_auto_route/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [HomeRoute(), WrapperImagesR(), InformationRoute(), ProfileRoute()],
      transitionBuilder: (context, child, animation) => FadeTransition(opacity: animation, child: child),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                backgroundColor: Colors.blue,
                unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 14),
                unselectedItemColor: Colors.white,
                selectedItemColor: Colors.amber,
                type: BottomNavigationBarType.fixed,
                selectedLabelStyle: const TextStyle(fontSize: 16, color: Colors.amber),
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home', backgroundColor: Colors.blue),
                  BottomNavigationBarItem(icon: Icon(Icons.image_outlined), label: 'Images'),
                  BottomNavigationBarItem(icon: Icon(Icons.info_outline_rounded), label: 'Information'),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
                ]));
      },
    );
  }
}
