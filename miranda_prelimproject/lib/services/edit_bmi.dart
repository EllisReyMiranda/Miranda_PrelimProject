import 'dart:io';
import 'package:riverpod/riverpod.dart';
import 'package:miranda_prelimproject/bmi_providers.dart';

void editBMIData(ProviderContainer container) {
  final bmiService = container.read(bmiServiceProvider);
  final bmi = bmiService.getBMI();

  if (bmi == null) {
    print('No BMI data available. Please add BMI first.');
  } else {
    print('Edit your BMI:');
    print('Current weight is ${bmi.weight} kg and height is ${bmi.heightcm} cm.');

    print('Enter new weight in kilograms:');
    double newWeight = double.parse(stdin.readLineSync()!);

    print('Enter new height in centimeters:');
    double newHeightcm = double.parse(stdin.readLineSync()!);

    // Update the BMI data using the service
    bmiService.addOrEditBMI(newWeight, newHeightcm);
    print('BMI data updated.');
  }
}
