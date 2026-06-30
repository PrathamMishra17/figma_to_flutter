
import 'package:figma_to_flutter/export.dart';



void main(){
   runApp(const DummyApp());
}

class DummyApp extends StatelessWidget{
  const DummyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
      child: GetMaterialApp(
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashScreen,
          getPages: Pages().pages
      ),
    );
  }
}