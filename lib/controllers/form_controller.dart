import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

class FormController extends GetxController {
  var namefield = TextEditingController();
  var passwordfield = TextEditingController();

  var isPasswordvisible = false.obs;
}
