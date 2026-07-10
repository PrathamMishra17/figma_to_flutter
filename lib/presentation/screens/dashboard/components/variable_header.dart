import 'package:figma_to_flutter/export.dart';

class VariableHeader {
  static Widget variableHeader(double screenHeight, double screenWidth ){
    return   Padding(padding: EdgeInsets.symmetric(horizontal: screenWidth*0.052),
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          VariableCollection.variableSelection(
              screenHeight,
              screenWidth,
              "View all",
              "apps",
              ImagePath.viewAllApp
          ),
          const SizedBox(
            width: 12,
          ),
          VariableCollection.variableSelection(
              screenHeight,
              screenWidth,
              "Add",
              "Product",
              ImagePath.addProduct
          ),
          const SizedBox(
            width: 12,
          ),
          VariableCollection.variableSelection(
              screenHeight,
              screenWidth,
              "View ",
              "Delivery",
              ImagePath.viewDelivery
          ),
          const SizedBox(
            width: 12,
          ),
          VariableCollection.variableSelection(
              screenHeight,
              screenWidth,
              "Pending",
              "Orders",
              ImagePath.orders
          ),
        ],
      ),
    );
  }
}