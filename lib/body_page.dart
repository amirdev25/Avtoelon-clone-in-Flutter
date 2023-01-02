import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/car_model.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  List<CarModel> cars = [];

  @override
  Widget build(BuildContext context) {
    loadData();
    return ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return listItemView(cars[index]);
        });
  }

  void loadData() {
    cars.add(CarModel(
        "https://imgd.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75",
        "BAIC EU5",
        "2022",
        "Tashkent",
        "Sedan",
        "White",
        "28 500 ye"));
    cars.add(CarModel(
        "https://imgd.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75",
        "BAIC EU5",
        "2022",
        "Tashkent",
        "Sedan",
        "White",
        "28 500 ye"));
    cars.add(CarModel(
        "https://imgd.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75",
        "BAIC EU5",
        "2022",
        "Tashkent",
        "Sedan",
        "White",
        "28 500 ye"));
    cars.add(CarModel(
        "https://imgd.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75",
        "BAIC EU5",
        "2022",
        "Tashkent",
        "Sedan",
        "White",
        "28 500 ye"));
    cars.add(CarModel(
        "https://imgd.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75",
        "BAIC EU5",
        "2022",
        "Tashkent",
        "Sedan",
        "White",
        "28 500 ye"));
    cars.add(CarModel(
        "https://imgd.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75",
        "BAIC EU5",
        "2022",
        "Tashkent",
        "Sedan",
        "White",
        "28 500 ye"));
    cars.add(CarModel(
        "https://imgd.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75",
        "BAIC EU5",
        "2022",
        "Tashkent",
        "Sedan",
        "White",
        "28 500 ye"));
    cars.add(CarModel(
        "https://imgd.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75",
        "BAIC EU5",
        "2022",
        "Tashkent",
        "Sedan",
        "White",
        "28 500 ye"));
    cars.add(CarModel(
        "https://imgd.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75",
        "BAIC EU5",
        "2022",
        "Tashkent",
        "Sedan",
        "White",
        "28 500 ye"));
    cars.add(CarModel(
        "https://imgd.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75",
        "BAIC EU5",
        "2022",
        "Tashkent",
        "Sedan",
        "White",
        "28 500 ye"));
    cars.add(CarModel(
        "https://imgd.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75",
        "BAIC EU5",
        "2022",
        "Tashkent",
        "Sedan",
        "White",
        "28 500 ye"));
    cars.add(CarModel(
        "https://imgd.aeplcdn.com/370x208/n/cw/ec/40432/scorpio-n-exterior-right-front-three-quarter-15.jpeg?isig=0&q=75",
        "BAIC EU5",
        "2022",
        "Tashkent",
        "Sedan",
        "White",
        "28 500 ye"));
  }

  Widget listItemView(CarModel car) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Row(
        children: [
          SizedBox(
            height: 200.0,
            width: 200.0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              margin: const EdgeInsets.all(16.0),
              child: FadeInImage.assetNetwork(
                image: car.imgUrl,
                placeholder: 'assets/loading.gif',
              ),
            ),
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Name ${car.name}"),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Name ${car.name}"),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Name ${car.name}"),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Name ${car.name}"),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Name ${car.name}"),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Name ${car.name}"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
