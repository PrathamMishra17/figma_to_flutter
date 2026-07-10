

import 'package:google_fonts/google_fonts.dart';

import '../../../../export.dart';

class CustomSideDrawer extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  const CustomSideDrawer({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {

    final List<String> navItems = [
      'Dashboard',
      'Orders',
      'E-com Users',
      'Franchise',
      'District Head',
      'State Head',
      'View Delivery',
      'Product/inventory\nManagement',
      'Category',
      'Discounts',
      'Banners',
      'Push Notification',
      'Prescription',
      'Requests',
      'Questions',
      'Reports',
      'Settings',
    ];

    return Drawer(
      backgroundColor: AppColors.kPrimaryContainerColor,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                       CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                        child: Image.asset(ImagePath.userImages),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nupur',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: AppColors.kPrimaryText,
                              )
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'ID- 562100600',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                  color: AppColors.kPrimaryText
                              )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Divider(
                    color: AppColors.kPrimaryText.withOpacity(0.3),
                    thickness: 1,
                    height: 1,
                  ),
                ],
              ),
            ),


            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                itemCount: navItems.length,
                itemBuilder: (context, index) {
                  final bool isSelected = currentIndex == index;


                  final Color itemColor = isSelected
                      ? AppColors.kLangBorderColor
                      : AppColors.kDrawerColor;

                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ListTile(
                      dense: true,
                      horizontalTitleGap: 12,
                      leading: Icon(
                        Icons.dashboard_outlined,
                        color: itemColor,
                        size: 22,
                      ),
                      title: Text(
                        navItems[index],
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: itemColor,
                        )
                      ),
                      onTap: () => onItemTapped(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}