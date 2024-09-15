import 'dart:io';
import 'package:riverpod/riverpod.dart';
import 'package:miranda_prelimproject/services/add_bmi.dart';
import 'package:miranda_prelimproject/services/delete_bmi.dart';
import 'package:miranda_prelimproject/services/view_bmi.dart';
import 'package:miranda_prelimproject/services/edit_bmi.dart';

void main() {
  final container = ProviderContainer();
  

  while (true) {
    print('1. Add BMI');
    print('2. View BMI');
    print('3. Edit BMI');
    print('4. Delete BMI');
    print('5. Exit');
    print('Choose an option:');
    
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addBMIData(container);
        break;
      case 2:
        viewBMIData(container);
        break;
      case 3:
        editBMIData(container);  // Edit BMI functionality
        break;
      case 4:
        deleteBMIData(container);
        break;
      case 5:
        container.dispose();
        exit(0);
      default:
        print('Invalid choice, please try again.');


        
    }
  }
}