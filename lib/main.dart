import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_manager/app/data/services/storage/services.dart';
import 'package:task_manager/app/modules/home/view.dart';
import 'package:get/get.dart';

void main() async{
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Todo List Manager',
      home: const HomePage(),
    );
  }
}