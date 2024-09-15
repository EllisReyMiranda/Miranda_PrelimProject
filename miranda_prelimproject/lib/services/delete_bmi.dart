import 'package:riverpod/riverpod.dart';
import 'package:miranda_prelimproject/bmi_providers.dart';

void deleteBMIData(ProviderContainer container) {
  final bmiService = container.read(bmiServiceProvider);
  bmiService.deleteBMI();
  print('BMI data deleted.');
}
