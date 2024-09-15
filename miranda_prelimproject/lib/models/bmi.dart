class BMI {
 
  double weight;
  double heightcm;


  BMI(this.weight, this.heightcm,);

  double calculateBMI() {
    double height = heightcm / 100;
    return weight / (height * height);
  }

  @override
  String toString() {
    double bmi = calculateBMI();
    return 'Weight: $weight kg, Height: $heightcm cm, BMI: ${bmi.toStringAsFixed(2)}';
  }
}
