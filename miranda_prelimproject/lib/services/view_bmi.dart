import 'package:riverpod/riverpod.dart';
import 'package:miranda_prelimproject/bmi_providers.dart';

void viewBMIData(ProviderContainer container) {
  final bmiService = container.read(bmiServiceProvider);
  final bmi = bmiService.getBMI();

  if (bmi == null) {
    print('No BMI data available. Please add BMI first.');
  } else {
    print('Your BMI is ${bmi.calculateBMI().toStringAsFixed(2)}');
    if (bmi.calculateBMI() < 18.5) {
      print('You are underweight.');
    } else if (bmi.calculateBMI() < 24.9) {
      print('You have a normal weight.');
    } else if (bmi.calculateBMI() < 29.9) {
      print('You are overweight.');
    } else {
      print('You are obese.');
    }
  }
}
