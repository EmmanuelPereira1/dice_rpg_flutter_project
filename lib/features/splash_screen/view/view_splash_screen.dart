import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';
import 'package:rpg/core/constants/images_strings.dart';
import 'package:rpg/features/splash_screen/controller/controller_splash_screen.dart';

class ViewSplashScreen extends StatefulWidget {
  const ViewSplashScreen({Key? key}) : super(key: key);

  @override
  State<ViewSplashScreen> createState() => _ViewSplashScreenState();
}

class _ViewSplashScreenState extends State<ViewSplashScreen> {
  final _controller = SplashScreenController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 224, 137),
      body: Center(
        child: Observer(builder: (_) {
          _controller.checkTokenValid(context);
          return Lottie.network(
              ImagesStrings.lottieSplashScrean);
        }),
      ),
    );
  }
}
