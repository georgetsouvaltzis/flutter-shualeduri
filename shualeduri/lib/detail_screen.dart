import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shualeduri/dummy_data.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        centerTitle: true,
        actions: [
          ElevatedButton(
            onPressed: () {

              var f = AlertDialog(
                content: Text("Warning"),
                title: Text("Are you sure you want to delete"),
                actions: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        DummyData.DUMMY_DATA.removeAt(0);

                      });
                      Navigator.pop(context,'Yes');
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text("Yes")
                  ),
                  TextButton(
                    onPressed: () {Navigator.pop(context, 'No');},
                    child: Text("No"),
                  )
                ],
              );
              showDialog(
                  context: context,
                  builder: (BuildContext context) => f
              );
              },
            child: Icon(Icons.delete),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            FadeInImage.assetNetwork(placeholder: "assets/car_placeholder.png", image: DummyData.DUMMY_DATA[0].imageUrl),
            Padding(
              padding: EdgeInsets.only(top:30),
              child:
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                Text("Brand:"),
                Text(DummyData.DUMMY_DATA[0].brand)
              ]
            )
            ),
            Padding(
                padding: EdgeInsets.only(top:10),
                child:
                Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Model:"),
                      Text(DummyData.DUMMY_DATA[0].model)
                    ]
                )
            ),
            Padding(
                padding: EdgeInsets.only(top:10),
                child:
                Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Year:"),
                      Text(DummyData.DUMMY_DATA[0].year.toString())
                    ]
                )
            ),
            Padding(
                padding: EdgeInsets.only(top:50),
                child:
                Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(DummyData.DUMMY_DATA[0].description)
                    ]
                )
            )
          ]
        )
      )
    );
  }
}