import 'package:miranda_prelimproject/models/bmi.dart';


class BmiService {
  BMI? _bmi;

  // Function to add or edit BMI data
  void addOrEditBMI(double weight, double heightcm) {
    _bmi = BMI(weight, heightcm);  
  }

  // Function to view BMI data
  BMI? getBMI() {
    return _bmi;
  }

  // Function to delete BMI data
  void deleteBMI() {
    _bmi = null;
  }
}