import 'dart:io';
import 'package:riverpod/riverpod.dart';

import 'package:miranda_prelimproject/bmi_providers.dart';

void addBMIData(ProviderContainer container) {
  print('Enter weight in kilograms:');
  double weight = double.parse(stdin.readLineSync()!);

  print('Enter height in centimeters:');
  double heightcm = double.parse(stdin.readLineSync()!);

  // Use the global BMI service provider to add BMI data
 
  final bmiService = container.read(bmiServiceProvider);
  bmiService.addOrEditBMI(weight, heightcm);
  print('BMI data addded');
}

