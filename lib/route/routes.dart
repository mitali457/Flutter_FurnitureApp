




import 'package:flutter/material.dart';
import 'package:furnitureapp/screens/product.dart';
import 'package:furnitureapp/screens/spalsh.dart';

class Routes {
  static final _appRoutes = {
     '/': (BuildContext context) => SplashScreen(),
    
    
     '/home': (BuildContext context) => ProductsScreen(),
    


    
    
  };

  static getRoutes() {
    return _appRoutes;
  }
}