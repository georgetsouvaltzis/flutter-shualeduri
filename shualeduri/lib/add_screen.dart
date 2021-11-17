import 'package:flutter/material.dart';
import 'package:shualeduri/car.dart';

import 'dummy_data.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  var imageController = TextEditingController();
  var brandController = TextEditingController();
  var modelController = TextEditingController();
  var yearController = TextEditingController();
  var descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
        centerTitle: true,
      ),
      body: Center(
        child:
        Expanded(
        child: Column(
        children:[
        TextFormField(
          controller: imageController,
        decoration:  InputDecoration(
          hintText: 'Car image url',
        ),
            validator: (String? value) {
              return (value == null ? "Car imageUrl is empty" : null);
            }),
          TextFormField(
            controller: brandController,
              decoration:  InputDecoration(
                hintText: 'Car brand',
              ),
              validator: (String? value) {
                return (value == null ? "Car brand is empty" : null);
              }),
          TextFormField(
            controller: modelController,
              decoration:  InputDecoration(
                hintText: 'Car model',
              ),
              validator: (String? value) {
                return (value == null ? "Car model is empty" : null);
              }),
          TextFormField(
            controller: yearController,
              keyboardType: TextInputType.number,
              decoration:  InputDecoration(
                hintText: 'Car year',
              ),
              validator: (String ? value) {
                return (value == null ? "Car year is empty" : null);
              }
          ),
          TextFormField(
            controller: descController,
              decoration:  InputDecoration(
                hintText: 'Car description',
              ),
              validator: (String? value) {
                return (value == null ? "Car description is empty" : null);
              }
              ),
          Expanded(
            child:
          Container(
            padding: EdgeInsets.symmetric(vertical:160),
            child:
              ElevatedButton(
                child:Text("add"),
                onPressed: () {
                  setState(() {
                    var c = Car(
                        imageUrl: imageController.text,
                        brand: brandController.text,
                        model: modelController.text,
                        description: descController.text,
                        year: int.parse(yearController.text),
                        id: DummyData.DUMMY_DATA.length + 1
                    );
                    DummyData.DUMMY_DATA.add(c);
                  });

                  Navigator.pushNamed(context, '/');
                },
              )
          )
          )
        ]
        )
        )
      ),
    );
  }
}
