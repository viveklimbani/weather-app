import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/common/resource/colors.dart';
import 'package:weather_app/common/resource/dimen.dart';
import 'package:weather_app/common/resource/images.dart';
import 'package:weather_app/common/resource/styles.dart';
import 'package:weather_app/feature/auth/login_screen.dart';
import 'package:weather_app/feature/auth/weather_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WeatherPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getMainLayout,
    );
  }

  get getMainLayout => Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [WAColors.primaryBgColor, WAColors.secondaryBgColor],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(Images.icCloud),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(Images.icMoon),
              ],
            ),
            getWeatherText,
            Image.asset(
              Images.icCloudSun,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(Images.icStar),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(Images.icSun),
              ],
            ),
          ],
        ),
      );

  get getWeatherText => RichText(
    text: TextSpan(children: [
      TextSpan(
          text: 'W',
          style: TextStyles.xxxLarge.copyWith(
            color: WAColors.whiteColor,
            fontSize: TextSize.jumbo50,
          )),
      TextSpan(
          text: 'eather',
          style: TextStyles.xxxLarge.copyWith(
            color: WAColors.whiteColor,
            fontSize: TextSize.jumbo30,
          )),
    ]),
  );
}
