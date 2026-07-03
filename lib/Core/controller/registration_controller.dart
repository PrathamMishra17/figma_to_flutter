import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  final formKey = GlobalKey<FormState>();


  var fullName = ''.obs;
  var email = ''.obs;
  var phone = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;
  var age = ''.obs;
  var altPhone = ''.obs;
  var officialEmail = ''.obs;
  var pincode = ''.obs;


  var selectedGender = ''.obs;
  var selectedDateOfBirth = 'dd-mm-yyyy'.obs;
  var selectedState = ''.obs;
  var selectedDistrict = ''.obs;
  var isPasswordVisible = false.obs;

  void chooseDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(const Duration(days: 365 * 18)),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      selectedDateOfBirth.value =
      "${pickedDate.day.toString().padLeft(2, '0')}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.year}";
    }
  }

  void submitForm() {
    if (formKey.currentState!.validate()) {
      Get.snackbar(
        "Success",
        "Welcome ${fullName.value}! Processing registration...",
        backgroundColor: Colors.green,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}