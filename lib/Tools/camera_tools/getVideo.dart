import 'dart:io';
import 'package:flutter/material.dart';
import 'package:external_path/external_path.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

Future _getVideo() async {
  var image = await ImagePicker().pickImage(source: ImageSource.gallery);
  if( image == null ){
    return;
  }

}