



import 'package:google_fonts/google_fonts.dart';

import '../../../export.dart';

class DashBoardScreen extends StatelessWidget{
   DashBoardScreen({super.key});
  final DashBoardController _dashBoardController = Get.put(DashBoardController());
  @override
  Widget build(BuildContext context) {

    final double screenWidth = Get.width;
    final double screenHeight = Get.height;
    return SafeArea(
        child:Scaffold(
          drawer: Obx((){
            return CustomSideDrawer(currentIndex: _dashBoardController.currentDrwrIndex.value, onItemTapped: _dashBoardController.changeDrawerIndex);
          }),
          bottomNavigationBar: Obx(
              ()=> CustomBottomNavigationBar(currentIndex: _dashBoardController.currentIndex.value, onTap: _dashBoardController.changeIndex)
          ),
            body: SingleChildScrollView(
                    child: Column(
                       children: [
                         Header.headerBoard(screenHeight, screenWidth),
                         SizedBox(
                           height: screenHeight*0.022,
                         ),
                        Header.productHeader(screenHeight, screenWidth),
                         SizedBox(
                           height: screenHeight*0.019,
                         ),
                         HeaderSelect.headerSelection(screenHeight, screenWidth),
                         SizedBox(
                           height: screenHeight*0.019,
                         ),
                         VariableHeader.variableHeader(screenHeight, screenWidth),
                         SizedBox(
                           height: screenHeight*0.0235,
                         ),
                         RevenueBanner.revenueBanner(screenHeight, screenWidth),
                         SizedBox(
                           height: screenHeight*0.0197,
                         ),
                         ProductsBanner.productBanner(screenHeight, screenWidth),
                         SizedBox(
                           height: screenHeight*0.026,
                         ),
                         OrdersBanner.orderBanner(screenHeight, screenWidth),
                         SizedBox(
                           height: screenHeight*0.026,
                         ),
                         Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth*0.040),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text("Top 5 District Head",
                             style: GoogleFonts.poppins(
                               fontWeight: FontWeight.w600,
                               fontSize: 20,
                               color: AppColors.kDarkText
                             ),
                             ),
                             SizedBox(
                               width: screenWidth*0.200,
                             ),
                             Image.asset(ImagePath.monthButton,
                             height: 30,
                               width: 80,
                             ),
                           ],
                         ),
                         ),
                         SizedBox(
                           height: screenHeight*0.0223,
                         ),

                        BottomBanner.bottomBanner(screenHeight, screenWidth),
                         SizedBox(
                           height: screenHeight*0.0223,
                         ),
                         Image.asset(ImagePath.bottomDots,
                         width: screenWidth*0.11445,
                           height: screenHeight*0.01174,
                         ),
                        SizedBox(
                              height: screenHeight*0.0106,
                         )
                       ],
                    ),

            ),
          ),

    );
  }
}