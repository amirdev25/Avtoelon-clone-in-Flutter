import 'package:flutter/material.dart';

import 'models/car_model.dart';

class BodyPage extends StatelessWidget {
  List<CarModel> cars = [];

  BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    loadData();
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 56.0,
            color: Colors.blue,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(16.0),
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                const Expanded(
                  child: Text(
                    "Avtoelon.uz",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: const Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(8.0, 8.0,16.0,8.0),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cars.length,
              itemBuilder: (context, index) {
                return listItemView(cars[index]);
              },
            ),
          )
        ],
      ),
    );
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
      shadowColor: Colors.black,
      elevation: 8.0,
      margin: const EdgeInsets.all(16.0),
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
