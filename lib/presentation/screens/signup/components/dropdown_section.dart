import 'package:figma_to_flutter/export.dart';

class GenderAndAgeSelectionSection extends StatelessWidget {
  final RegistrationController controller;

  const GenderAndAgeSelectionSection({super.key, required this.controller});

  void _openGenderPicker(BuildContext context) {
    FocusScope.of(context).unfocus();

    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Select Gender",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E293B),
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              title: const Center(child: Text("Male")),
              onTap: () {
                Get.back();
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  controller.selectedGender.value = "Male";
                });
              },
            ),
            const Divider(height: 1),
            ListTile(
              title: const Center(child: Text("Female")),
              onTap: () {
                Get.back();
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  controller.selectedGender.value = "Female";
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const  SizedBox(
                  height: 10,
                ),
                AuthField(
                  hintText: controller.selectedGender.value.isEmpty
                      ? "Select Gender"
                      : controller.selectedGender.value,
                   fontColor: AppColors.kBorderSignUpColor,
                  isPassword: false,
                  disableBorder: false,
                  readOnly: true,
                  fillColor: AppColors.kTestField,
                  onTap: () => _openGenderPicker(context),
                  trailIcon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.kBorderSignUpColor,
                    size: 20,
                  ),
                  onTrailIconTap: () => _openGenderPicker(context),
                ),
              ],
            ),
          ),
        ),

        SizedBox(width: screenWidth * 0.04),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 10),
              AuthField(
                hintText: "Please enter age",
                isPassword: false,
                disableBorder: false,
                fillColor: AppColors.kTestField,
                fontColor: AppColors.kBorderSignUpColor,
                onChanged: (value) => controller.age.value = value,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
