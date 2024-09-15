import 'package:riverpod/riverpod.dart';
import 'package:miranda_prelimproject/services/bmi_services.dart';


// Global provider for BmiService
final bmiServiceProvider = Provider((ref) => BmiService());
