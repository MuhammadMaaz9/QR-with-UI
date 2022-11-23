import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_with_ui/controllers/generateQr_controller.dart';
import 'package:qr_with_ui/views/qr_app2.dart';

class QrAppHome extends StatelessWidget {
  const QrAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    GenerateQr qr = Get.put(GenerateQr());

    return Obx(
      () => Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff00ADEE),
                  ),
                  height: 0.25 * height,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 0.03 * height),
                          height: 0.08 * height,
                          width: 0.11 * width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child:
                              Center(child: Image.asset('assets/arrow.png'))),
                      Text(
                        'Guest',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 0.03 * width),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/bell-icon.png')),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 0.5 * height,
                margin:
                    EdgeInsets.only(left: 0.15 * width, right: 0.15 * width),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextField(
                      controller: qr.name.value,
                      decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                    TextField(
                      controller: qr.nic.value,
                      decoration: InputDecoration(
                          labelText: 'CNIC',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                    TextField(
                      controller: qr.meetto.value,
                      decoration: InputDecoration(
                          labelText: 'Meeto To',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                    TextField(
                      controller: qr.meettime.value,
                      decoration: InputDecoration(
                          labelText: 'Meeto Time',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.03 * height,
              ),
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.0),
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      qr.Name.value = qr.name.value.text;
                      qr.CNIC.value = qr.nic.value.text;
                      qr.Meetto.value = qr.meetto.value.text;
                      qr.Meettime.value = qr.meettime.value.text;

                      if (qr.Name.value == '' ||
                          qr.CNIC.value == '' ||
                          qr.Meetto.value == '' ||
                          qr.Meettime.value == '') {
                        throw Error();
                      } else {
                        Get.to(() => QrApp2());
                      }
                    },
                    child: Container(
                      height: 0.12 * height,
                      width: 0.8 * width,
                      color: Color(0xff00ADEE),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('GENERATE QR',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          Text(
                            'GUEST SMART PASS',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0.022 * height,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    child: Container(
                      height: 55,
                      width: 65,
                      color: Colors.white,
                      child: Image.asset(
                        'assets/qr-icon.png',
                      ),
                    ),
                  ),
                )
              ]),
              TextButton(
                onPressed: () => throw Exception(),
                child: const Text("Throw Test Exception"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
