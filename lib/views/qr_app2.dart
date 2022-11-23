import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../controllers/generateQr_controller.dart';

class QrApp2 extends StatelessWidget {
  QrApp2({super.key});

  GenerateQr q = Get.put(GenerateQr());

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Column(children: [
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 0.03 * height),
                height: 0.08 * height,
                width: 0.11 * width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: GestureDetector(
                    onTap: (() => Get.back()),
                    child: Center(child: Image.asset('assets/arrow.png')))),
          ],
        ),
        SizedBox(
          height: 0.01 * height,
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          child: Container(
            height: 0.06 * height,
            width: 0.87 * width,
            color: Color(0xff00ADEE),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Share',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 0.02 * height,
        ),
        Container(
          height: 0.75 * height,
          width: 0.87 * width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
              border: Border.all(
                color: Color.fromARGB(255, 0, 108, 148),
                width: 1.0,
                style: BorderStyle.solid,
              ),
              color: Color(0xffCCF1FF)),
          child: Stack(
            children: [
              Positioned(right: 0, child: Image.asset('assets/round 1.png')),
              Positioned(bottom: 0, child: Image.asset('assets/round 3.png')),
              Positioned(
                  right: 0,
                  top: 0.35 * height,
                  child: Image.asset('assets/round center.png')),
              Positioned(
                  right: 0,
                  top: 0.37 * height,
                  child: Image.asset('assets/round center_.png')),
              Positioned(
                bottom: 0.1 * height,
                left: 0.1 * width,
                child: Container(
                  height: 0.25 * height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(color: Color(0xff9796A1)),
                      ),
                      Text(
                        '${q.Name.value}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'CNIC',
                        style: TextStyle(color: Color(0xff9796A1)),
                      ),
                      Text(
                        '${q.CNIC.value}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Meet to',
                        style: TextStyle(color: Color(0xff9796A1)),
                      ),
                      Text(
                        '${q.Meetto.value}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Meet Time',
                        style: TextStyle(color: Color(0xff9796A1)),
                      ),
                      Text(
                        '${q.Meettime.value}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0.14 * height,
                left: 0.163 * width,
                child: QrImage(
                  data:
                      '${q.Name.value},${q.CNIC.value},${q.Meettime.value},${q.Meetto.value}',
                  version: QrVersions.auto,
                  size: 200,
                ),
              ),
              Positioned(
                right: 0,
                top: 0.03 * height,
                child: Container(
                  height: 0.07 * height,
                  width: 0.22 * width,
                  decoration: BoxDecoration(
                      color: Color(0xff00ADEE),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      )),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 11, left: 30),
                          child: Column(
                            children: [
                              Text(
                                'Guest',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Pass',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ])),
    );
  }
}
