import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'drawer_page.dart';

// void main() => runApp(
//       // DevicePreview(
//       //   enabled: !kReleaseMode,
//       //   builder: (context) =>
//       //   const MyApp(), // Wrap your app
//       // ),
//       const MyApp(), //
//     );
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends GetResponsiveView<Controler> {
  @override
  Widget builder() {
    if (screen.isPhone) {
      return const Mobile();
    } else if (screen.isDesktop) {
      // return const Web();
      return const Tab();
    } else if (screen.isTablet) {
      return const Tab();
    }
    return const Mobile();
  }
}

class Mobile extends StatelessWidget {
  const Mobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    double h = queryData.size.height;
    double w = queryData.size.width;

    double fsize = (h / 20) * (w / 20) / 10;
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Container(
                height: h,
                width: w,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Phone',
                    style: TextStyle(fontSize: fsize),
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    )));
  }
}

class Tab extends StatelessWidget {
  const Tab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    double h = queryData.size.height;
    double w = queryData.size.width;

    double fsize = (h / 20) * (w / 20) / 10;
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    height: h,
                    width: double.infinity,
                    color: Colors.yellow[700],
                    child: Center(
                      child: Text(
                        'PLAYATNU',
                        style: TextStyle(fontSize: fsize / 4),
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    color: Colors.green,
                    height: h,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'WEB',
                        style: TextStyle(fontSize: fsize),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    )));
  }
}

class Web extends StatelessWidget {
  const Web({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    double h = queryData.size.height;
    double w = queryData.size.width;

    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        children: [
          const Expanded(flex: 1, child: DrawMax()),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    height: 400,
                    color: Colors.yellow[700],
                  ),
                ],
              )),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    color: Colors.green,
                    child: Text(
                      'Phone',
                      style: TextStyle(fontSize: h / 10),
                    ),
                  ),
                ],
              )),
        ],
      ),
    )));
  }
}

class Controler {}

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DevicePreview(child: Container());
//   }
// }
