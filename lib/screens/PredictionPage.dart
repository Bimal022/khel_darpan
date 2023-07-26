import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khel_darpan/Components/Constants/constants.dart';

class PredictionPage extends StatefulWidget {
  const PredictionPage({super.key});

  @override
  _PredictionPageState createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  String sport = '';
  String country1 = '';
  String country2 = '';
  double predictionPercentage = 0.0;

  void calculatePrediction() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prediction Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter Three Inputs:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Icon(FontAwesomeIcons.futbol),
                  title: TextField(
                    onChanged: (value) {
                      setState(() {
                        sport = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Sport'),
                  ),
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.flag),
                  title: TextField(
                    onChanged: (value) {
                      setState(() {
                        country1 = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Country1'),
                  ),
                  trailing: country1.isNotEmpty
                      ? FaIcon(
                          FontAwesomeIcons.flag,
                          color: Colors.black,
                        )
                      : null,
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.flag),
                  title: TextField(
                    onChanged: (value) {
                      setState(() {
                        country2 = value;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Country2'),
                  ),
                  trailing: country2.isNotEmpty
                      ? FaIcon(
                          FontAwesomeIcons.flag,
                          color: Colors.black,
                        )
                      : null,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // Background color
                  ),
                  onPressed: calculatePrediction,
                  child: Text('Predict'),
                ),
                SizedBox(height: 40),
                Text(
                  'Percentage of Winning:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '${predictionPercentage.toStringAsFixed(2)}%',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
