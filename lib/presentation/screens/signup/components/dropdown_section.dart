

import '../../../../export.dart';

class GenderAndAgeSelectionSection extends StatelessWidget {
  final RegistrationController controller;

  const GenderAndAgeSelectionSection({super.key, required this.controller});



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
                const SizedBox(height: 10),
                AuthField(
                  hintText: controller.selectedGender.value.isEmpty
                      ? "Select Gender"
                      : controller.selectedGender.value,
                  fontColor: AppColors.kBorderSignUpColor,
                  isPassword: false,
                  disableBorder: false,
                  readOnly: true,
                  fillColor: AppColors.kTestField,
                  onTap: () => DropDownSectionFunctions.openGenderPicker(context,controller),
                  trailIcon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.kBorderSignUpColor,
                    size: 20,
                  ),
                  onTrailIconTap: () =>DropDownSectionFunctions.openGenderPicker(context,controller),
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