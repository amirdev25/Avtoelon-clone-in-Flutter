import 'package:avtoelon/utils/Constants.dart';
import 'package:flutter/material.dart';

import '../models/car_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  List<CarModel> cars = [];

  HomeBody({super.key});

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
                  margin: const EdgeInsets.fromLTRB(8.0, 8.0, 16.0, 8.0),
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
                return listItemView(cars[index], context);
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

  Widget listItemView(CarModel car, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          Constants.DETAILS_PAGE,
          arguments: {Constants.CAR: car},
        );
      },
      child: Card(
        shadowColor: Colors.black,
        elevation: 2.0,
        margin: const EdgeInsets.all(4.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          children: [
            SizedBox(
              height: 120.0,
              width: 120.0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                margin: const EdgeInsets.all(4.0),
                child: FadeInImage.assetNetwork(
                  image: car.imgUrl,
                  placeholder: 'assets/loading.gif',
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 8.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    car.name,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                  alignment: Alignment.centerLeft,
                  child:
                      Text("Year:\t\t ${car.year}", textAlign: TextAlign.start),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                  alignment: Alignment.centerLeft,
                  child: Text("Town:\t\t ${car.town}"),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                  child: Text("Body:\t\t ${car.body}"),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                  alignment: Alignment.centerLeft,
                  child: Text("Color:\t\t ${car.color}"),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                  alignment: Alignment.centerLeft,
                  child: Text("Price:\t\t ${car.price}"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
