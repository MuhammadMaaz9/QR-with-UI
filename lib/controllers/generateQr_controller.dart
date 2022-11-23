import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GenerateQr extends GetxController {
  Rx<TextEditingController> name = TextEditingController().obs;
  Rx<TextEditingController> nic = TextEditingController().obs;
  Rx<TextEditingController> meetto = TextEditingController().obs;
  Rx<TextEditingController> meettime = TextEditingController().obs;

  RxString Name = "".obs;
  RxString CNIC = "".obs;
  RxString Meetto = "".obs;
  RxString Meettime = "".obs;
}
