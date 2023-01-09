import 'package:avtoelon/models/car_model.dart';
import 'package:avtoelon/utils/Constants.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: DetailBody(),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, CarModel>;
    CarModel? car = args[Constants.CAR];
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            child: Expanded(
              child: Image.network(car!.imgUrl, fit: BoxFit.fill,),
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
    );
  }
}
