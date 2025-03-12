import 'package:flutter/cupertino.dart';

class CommonUtility{

  static Size getDeviceScreenSize(BuildContext context){
    return MediaQuery.of(context).size;
  }

}