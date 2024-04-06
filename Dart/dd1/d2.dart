void main() {
  List<double> celcius = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];

  for(var celcio in celcius){
    double fahrenheit = transformarParaFahrenheit(celcio);
    double kelvin = transformarParaKelvin(celcio);
    print('Raio: $celcio, área: ${fahrenheit.toStringAsFixed(2)}, perímetro: ${kelvin.toStringAsFixed(2)}');
  }
}

double transformarParaFahrenheit(double celcius){
  return celcius * 9 / 5 + 32;
}

double transformarParaKelvin(double celcius){
  return celcius + 273.15;
}