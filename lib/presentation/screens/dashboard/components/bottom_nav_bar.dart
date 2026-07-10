

import 'package:google_fonts/google_fonts.dart';

import '../../../../export.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;



  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const double barHeight = 80.0;
    const Color backgroundColor = Colors.white;

    const Color activeColor = AppColors.kLangBorderColor;
    const Color inactiveColor = AppColors.kDarkText;

    return Container(
      height: barHeight,
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(
              index: 0,
              label: 'Dashboard',
              icon: Icons.grid_view_rounded,
              activeColor: activeColor,
              inactiveColor: inactiveColor,
            ),
            _buildNavItem(
              index: 1,
              label: 'Users',
              icon: Icons.people_outline,
              activeColor: activeColor,
              inactiveColor: inactiveColor,
            ),
            _buildNavItem(
              index: 2,
              label: 'Products',
              icon:Icons.inventory_2_outlined,
              activeColor: activeColor,
              inactiveColor: inactiveColor,
            ),
            _buildNavItem(
              index: 3,
              label: 'Reports',
              icon: Icons.analytics_outlined,
              activeColor: activeColor,
              inactiveColor: inactiveColor,
            ),
            _buildNavItem(
              index: 4,
              label: 'Profile',
             icon: Icons.account_circle_outlined,
              activeColor: activeColor,
              inactiveColor: inactiveColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required String label,
   required IconData icon,
    required Color activeColor,
    required Color inactiveColor,
  }) {
    final bool isSelected = currentIndex == index;
    final Color currentColor = isSelected ? activeColor : inactiveColor;

    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => onTap(index),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [

            Icon(icon,
            size: 19.5,
              color: currentColor,
            ),

            const SizedBox(height: 6),
            Text(
              label,
              style: GoogleFonts.poppins(
                color: currentColor,
                fontSize: 12.5,
                fontWeight: FontWeight.w400,
              )
            ),
          ],
        ),
      ),
    );
  }
}