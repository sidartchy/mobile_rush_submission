class WeatherModel {
  final String? city;
  final double? latitude;
  final double? longitude;
  final double? temperature;
  final double? feelsLike;
  final String? condition; // Corrected spelling
  final double? riskFactor;
  final double? precipitationProbability; // Updated naming
  final int? windSpeed;
  final String? windDirection;
  final int? atmPressure;
  final int? humidity;

  WeatherModel({
    this.city,
    this.latitude,
    this.longitude,
    this.temperature,
    this.feelsLike,
    this.condition, // Corrected spelling
    this.riskFactor,
    this.precipitationProbability, // Updated naming
    this.windSpeed,
    this.windDirection,
    this.atmPressure,
    this.humidity,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      city: json['location']['city'] ?? 'Not available',
      latitude: json['location']['latitude'] ?? 'Not Available',
      longitude: json['location']['longitude'] ?? 'Not Available',
      temperature: (json['weather']['temperature'] as num).toDouble(),
      feelsLike: (json['weather']['feels_like'] as num).toDouble(),
      condition:
          json['weather']['condition'] ?? 'Not available', // Corrected spelling
      riskFactor: (json['weather']['risk_factor'] as num).toDouble(),
      precipitationProbability:
          (json['weather']['precipitation_probability'] as num).toDouble(),
      windSpeed: json['weather']['wind_speed'],
      windDirection: json['weather']['wind_direction'],
      atmPressure: json['weather']['atm_pressure'],
      humidity: json['weather']['humidity'],
    );
  }
}
