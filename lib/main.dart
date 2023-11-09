
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(
    useInheritedMediaQuery:true,
    debugShowCheckedModeBanner:false,
    home: Home(),)));
}

