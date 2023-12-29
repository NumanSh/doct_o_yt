import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'doct_app.dart';

void main() {
  runApp(DoctApp(
    appRoutes: AppRoutes(),
  ));
}
// here is an import note:
// i used the flutter_native_splash package to add a splash screen to the app, first i created a new file called dlutter_native_splash.yaml
// i had a problem about the android that had Api 30 or above so there is a way to solve it, using figma.
// first do a frame with width and heigth 640 and radius 320 then make them  group.
// then make another frame with 960 and put the group inside the it. 
//import it as png with 1x. and use it.
//dont forgrt to use dart run flutter_native_splash:create in the terminal. 