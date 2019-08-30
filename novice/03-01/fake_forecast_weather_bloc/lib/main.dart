import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/Weather.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

// Since version 0.17.0, you can use a stateless widget with Bloc
class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => Weather(),
      child: Scaffold(
        appBar: AppBar(title: Text("Fake Weather App")),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Consumer<Weather>(
                builder: (context, weather, _) => Text(weather.cityName,
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
              ),
              Consumer<Weather>(
                builder: (context, weatherFake, _) => Text(
                  weatherFake.temperature.toStringAsFixed(1).toString(),
                  style: TextStyle(fontSize: 80),
                ),
              ),
              CityInputField()
            ],
          ),
        ),
      ),
    );
  }
}

class CityInputField extends StatefulWidget {
  const CityInputField({
    Key key,
  }) : super(key: key);

  @override
  _CityInputFieldState createState() => _CityInputFieldState();
}

class _CityInputFieldState extends State<CityInputField> {
  TextEditingController cityController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Consumer<Weather>(
        builder: (context, weatherFake, _) => TextField(
          controller: cityController,
          // onSubmitted: submitCityName,
          onSubmitted: (newValue) {
            weatherFake.cityName = newValue;
            weatherFake.temperature =
                20 + Random().nextInt(15) + Random().nextDouble();
          },
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: "Enter a city",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
