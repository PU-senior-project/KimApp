import 'package:flutter/material.dart';
import 'package:kim_app/Tools/constants.dart';
import 'package:kim_app/Tools/widgetfunction.dart';
import 'package:kim_app/screens/step2_1_ChoiceGender_view.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';

import '../Tools/PDF/PDFViewPage.dart';
import '../Tools/SlideLeftRoute.dart';
import '../Tools/PDF/PDFApi.dart';
import '../Tools/SlideRightRoute.dart';
import '../Tools/folders/create_folder.dart';
import '../Tools/Kim/Kim_Constans.dart';
import 'homescreen.dart';

class Result_view extends StatefulWidget {
  const Result_view({Key? key}) : super(key: key);

  @override
  State<Result_view> createState() => _Result_viewState();
}

class _Result_viewState extends State<Result_view> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorPaleGray,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: <Widget>[
              //標題文字
              addVerticalSapce(constraints.maxHeight * 0.005),
              Container(
                padding: EdgeInsets.only(left: constraints.maxWidth * 0.025),
                alignment: Alignment.centerLeft,
                child: Text("評測結果",
                    style: TextStyle(
                        fontSize: constraints.maxHeight * 0.05,
                        color: Colors.white)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //************* 風險值
                  SizedBox(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.225,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: constraints.maxWidth * 0.5,
                            height: constraints.maxHeight * 0.225,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 15,
                                color: RiskLevel.getScore() == 1
                                    ? Colors.green
                                    : RiskLevel.getScore() == 2
                                        ? Colors.amberAccent
                                        : RiskLevel.getScore() == 4
                                            ? Colors.orange
                                            : RiskLevel.getScore() == 8
                                                ? Colors.red
                                                : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: constraints.maxHeight * 0.02),
                            child: Text(
                              "${RiskLevel.getScore()}",
                              style: TextStyle(
                                fontSize: constraints.maxHeight * 0.08,
                                color: RiskLevel.getScore() == 1
                                    ? Colors.green
                                    : RiskLevel.getScore() == 2
                                        ? Colors.amberAccent
                                        : RiskLevel.getScore() == 4
                                            ? Colors.orange
                                            : RiskLevel.getScore() == 8
                                                ? Colors.red
                                                : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: constraints.maxHeight * 0.04),
                            child: Text(
                              RiskLevel.getScore() == 1
                                  ? "低風險"
                                  : RiskLevel.getScore() == 2
                                      ? "中等風險"
                                      : RiskLevel.getScore() == 4
                                          ? "中高風險"
                                          : RiskLevel.getScore() == 8
                                              ? "高風險"
                                              : "錯誤",
                              //textAlign: TextAlign.center, //constraints.maxHeight * 0.053
                              style: TextStyle(
                                fontSize: RiskLevel.getScore() == 1
                                    ? constraints.maxHeight * 0.053
                                    : RiskLevel.getScore() == 2
                                        ? constraints.maxHeight * 0.043
                                        : RiskLevel.getScore() == 4
                                            ? constraints.maxHeight * 0.043
                                            : RiskLevel.getScore() == 8
                                                ? constraints.maxHeight * 0.053
                                                : 0,
                                color: RiskLevel.getScore() == 1
                                    ? Colors.green
                                    : RiskLevel.getScore() == 2
                                        ? Colors.amberAccent
                                        : RiskLevel.getScore() == 4
                                            ? Colors.orange
                                            : RiskLevel.getScore() == 8
                                                ? Colors.red
                                                : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  addVerticalSapce(30),
                  //************* 警示文字
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: constraints.maxWidth * 0.85,
                        height: constraints.maxHeight * 0.2,
                        child: Container(
                          width: constraints.maxWidth * 0.85,
                          height: constraints.maxHeight * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: 13,
                                child: Text(
                                  "*提醒",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.red),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "目前風險等級為第1級為低負荷狀態\n非常良好的姿態!請繼續維持下去。",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  addVerticalSapce(constraints.maxWidth * 0.025),
                  //************* What Next?
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      SizedBox(
                          width: constraints.maxWidth * 0.95,
                          height: constraints.maxHeight * 0.07,
                          child: Text(
                            "What Next?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: constraints.maxHeight * 0.05),
                          )),
                    ],
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        width: constraints.maxWidth * 0.85,
                        height: constraints.maxHeight * 0.2,
                        child: Container(
                          width: constraints.maxWidth * 0.85,
                          height: constraints.maxHeight * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey,
                            border: Border.all(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Center(
                                child: Text(
                                  "此種風險等級不易產生生理做載的情形發生\n為最理想標準的姿態。",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  addVerticalSapce(constraints.maxWidth * 0.025),
                  //************* 三個按鈕列
                  SizedBox(
                    child: Padding(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 95,
                                height: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1000),
                                  color: COLOR_GRAY,
                                ),
                              ),
                              Positioned(
                                left: 14,
                                top: 4,
                                child: Icon(
                                  Icons.videocam,
                                  size: 65,
                                ),
                              ),
                              Positioned(
                                left: 14,
                                top: 55,
                                child: Text(
                                  "下載影片",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () async {
                              var status = await Permission.storage.request();
                              if (status.isGranted) {
                                // 權限已授予 //這邊記得要改寫假如權限有跑過要職接近下一個
                                createPDFNewDir();
                                // Navigator.push(context,
                                //   SlideLeftRoute(widget: PDFApi()));
                                final path =
                                    'assets/report/KIMAPP_NewReport.pdf';
                                final file = await PDFApi.loadAsset(path);
                                openPDF(context, file);
                              } else {
                                // 權限未被授予
                                Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 95,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1000),
                                    color: COLOR_GRAY,
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 4,
                                  child: Icon(
                                    Icons.download,
                                    size: 63,
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  top: 55,
                                  child: Text(
                                    "下載報告",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  SlideRightRoute(widget: Homescreen()));
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 95,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1000),
                                    color: COLOR_GRAY,
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  top: 4,
                                  child: Icon(
                                    Icons.restart_alt,
                                    size: 63,
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  top: 55,
                                  child: Text(
                                    "重新測試",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          );
        }),
      ),
    );
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PDFViewPage(file: file)),
      );

  Future requestPermission() async {
    if (await Permission.contacts.request().isGranted) {
// Either the permission was already granted before or the user just granted it.
    }
// You can request multiple permissions at once.
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
    ].request();
    print(statuses[Permission.storage]);
  }
}