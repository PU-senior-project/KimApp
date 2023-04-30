import 'package:flutter/material.dart';
import 'package:kim_app/Tools/SlideRightRoute.dart';
import 'package:kim_app/screens/step1_VideoPage.dart';
import 'package:kim_app/screens/step2_1_ChoiceGender_view.dart';
import 'package:kim_app/screens/step3_result_view.dart';
import '../Tools/camera_tools/camera_screen.dart';
import '../Tools/constants.dart';
import '../Tools/Boxdecoration.dart';
import '../Tools/widgetfunction.dart';
import 'TargetList.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({
    Key? key,
  }) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    //final size = MediaQuery.of(context).size;
    //final width = size.width;
    //final height = size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorPaleGray,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: <Widget>[
              //Title
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: Container(
                  height: 150,
                  width: constraints.maxWidth * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: colorGray,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "人因工程\n危害檢測軟體",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: constraints.maxHeight * 0.05,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.05,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: constraints.maxWidth * 0.9,
                    height: constraints.maxHeight * 0.5,
                    decoration: BoxDecoration(
                      color: colorCement,
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth * 0.8,
                    height: constraints.maxHeight * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Image.asset(
                      "assets/images/pose.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: constraints.maxHeight * 0.08,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      SlideRightRoute(
                        widget: TartgetList(
                          isMan: false,
                        ),
                      ),
                    );
                  });
                },
                child: Container(
                  width: constraints.maxWidth * 0.8,
                  height: constraints.maxHeight * 0.09,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0xffF5F49B),
                  ),
                  child: Center(
                    child: Text(
                      "開始",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
