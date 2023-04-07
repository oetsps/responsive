import 'package:responsive/views/home/home_content_desktop.dart';
import 'package:responsive/views/home/home_content_mobile.dart';
import 'package:responsive/widgets/call_to_action/call_to_action.dart';
import 'package:responsive/widgets/centered_view/centered_view.dart';
import 'package:responsive/widgets/course_details/course_details.dart';
import 'package:responsive/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
          ? const NavigationDrawerResponsive()
          : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              const NavigationBarWeb(),
              Expanded(
                  child: ScreenTypeLayout.builder(
                    mobile: (context) => const HomeContentMobile(),
                    desktop: (context) => const HomeContentDesktop(),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
