import 'package:flutter/material.dart';
import 'package:responsive/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navigation_bar_mobile.dart';

class NavigationBarWeb extends StatelessWidget {
  const NavigationBarWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const NavigationBarMobile(),
      desktop: (context) => const NavigationBarTabletDesktop(),
    );
  }
}
