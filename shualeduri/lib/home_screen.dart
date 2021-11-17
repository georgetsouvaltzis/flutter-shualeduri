import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shualeduri/car.dart';
import 'package:shualeduri/dummy_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hello"),
        actions: [
          ElevatedButton(
            onPressed: ()
                {
                  Navigator.pushNamed(context,'/add');
                },
            child: Icon(Icons.add)
          ),
        ],
      ),
      body:
      GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 1,
        scrollDirection: Axis.vertical,
        children: List.generate(DummyData.DUMMY_DATA.length, (index) {

          return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/details", arguments: DummyData.DUMMY_DATA[index]);
              },
              onLongPress: () {
                Navigator.pushNamed(context, 'edit');
              },
              child:Center(
            child:
              Column(
                children: [
                  FadeInImage.assetNetwork(placeholder: "assets/car_placeholder.png", image: DummyData.DUMMY_DATA[index].imageUrl),
                  Text(DummyData.DUMMY_DATA[index].brand),
                  Text(DummyData.DUMMY_DATA[index].year.toString())
                ],
              )
          ));
          // return Center(
          //   child: Text(
          //     'Item $index',
          //     style: Theme.of(context).textTheme.headline5,
          //   ),
          // );
        }),
      ),
    );
  }
}
