import 'package:intl/intl.dart';
import 'package:figma_to_flutter/export.dart';

class DobSelectionField extends StatelessWidget {
  final RegistrationController controller;

  const DobSelectionField({super.key, required this.controller});

  DateTime _getInitialDate() {
    final DateTime now = DateTime.now();
    final DateTime fallback = DateTime(now.year - 18, now.month, now.day);

    final String raw = controller.selectedDateOfBirth.value.trim();
    if (raw.isEmpty) return fallback;

    try {
      return DateFormat('dd/MM/yyyy').parseStrict(raw);
    } catch (_) {
      return fallback;
    }
  }

  Future<void> _openDatePicker(BuildContext context) async {
    FocusScope.of(context).unfocus();

    final DateTime now = DateTime.now();

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _getInitialDate(),
      firstDate: DateTime(1900),
      lastDate: now,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: AppColors.kPrimaryContainerColor,
              onPrimary: AppColors.kPrincipalColor,
              onSurface: AppColors.kDarkText,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      controller.selectedDateOfBirth.value = DateFormat('dd/MM/yyyy').format(picked);
    }
  }

  bool get _hasValidDob {
    final String raw = controller.selectedDateOfBirth.value.trim();
    if (raw.isEmpty) return false;
    try {
      DateFormat('dd/MM/yyyy').parseStrict(raw);
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => SizedBox(
        width: 345,
        height: 47,
        child: AuthField(
          hintText: _hasValidDob ? controller.selectedDateOfBirth.value : "dd-mm-yyyy",
          fontColor: AppColors.kBorderSignUpColor,
          isPassword: false,
          disableBorder: false,
          fontSize: 16,
          readOnly: true,
          fillColor: AppColors.kTestField,
          onTap: () => _openDatePicker(context),
          trailIcon: const Icon(
            Icons.calendar_today,
            color: AppColors.kPrimaryContainerColor,
            size: 25,
          ),
          onTrailIconTap: () => _openDatePicker(context),
        ),
      ),
    );
  }
}