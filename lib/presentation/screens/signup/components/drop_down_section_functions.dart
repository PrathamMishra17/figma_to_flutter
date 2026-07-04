import '../../../../export.dart';

class DropDownSectionFunctions {
  static void openGenderPicker(BuildContext context, controller) {
    FocusScope.of(context).unfocus();

    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 28),
        decoration: const BoxDecoration(
          color: AppColors.kPrincipalColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Obx(
              () => Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Drag handle
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: AppColors.kLabelTextBorder,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                "Select Gender",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: AppColors.kDarkText,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Choose the option that applies to you",
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.kSubTextColor,
                ),
              ),
              const SizedBox(height: 18),
              Row(
                children: [
                  Expanded(
                    child: buildGenderCard(
                      context,
                      controller: controller,
                      gender: "Male",
                      icon: Icons.male_rounded,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: buildGenderCard(
                      context,
                      controller: controller,
                      gender: "Female",
                      icon: Icons.female_rounded,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }
 static  Widget buildGenderCard(
      BuildContext context, {
        required String gender,
        required IconData icon,
       required controller
      }) {
    final bool isSelected = controller.selectedGender.value == gender;

    return GestureDetector(
      onTap: () {
        controller.selectedGender.value = gender;
        Get.back();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.kPrimaryContainerColor.withOpacity(0.08)
              : AppColors.kTestField,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected
                ? AppColors.kPrimaryContainerColor
                : AppColors.kLabelTextBorder,
            width: isSelected ? 1.6 : 1,
          ),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  icon,
                  size: 32,
                  color: isSelected
                      ? AppColors.kPrimaryContainerColor
                      : AppColors.kBorderSignUpColor,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              gender,
              style: TextStyle(
                fontSize: 14,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                color: isSelected
                    ? AppColors.kPrimaryContainerColor
                    : AppColors.kDarkText,
              ),
            ),
            const SizedBox(height: 6),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 150),
              opacity: isSelected ? 1 : 0,
              child: const Icon(
                Icons.check_circle_rounded,
                size: 16,
                color: AppColors.kPrimaryContainerColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

}