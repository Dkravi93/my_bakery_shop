import 'package:flutter/material.dart';
import 'package:my_bakery_shop/utils/app_bar.dart';
import 'package:my_bakery_shop/utils/search_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final bool active = true;

  @override
  Widget build(BuildContext context) {
    var borderRadius = const BorderRadius.all(Radius.circular(12));
    return Scaffold(
      appBar: buildGlobalAppBar(context: context, title: 'My Baker Shop'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: searchBar(),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/breakfast');
                  },
                  child: Text('Breakfast'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add Lunch Page Routing here
                    print("Lunch Page Coming Soon");
                  },
                  child: Text('Lunch'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add Dinner Page Routing here
                    print("Dinner Page Coming Soon");
                  },
                  child: Text('Dinner'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Popular Items',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    selectedTileColor: const Color.fromARGB(255, 178, 255, 232),
                    selected: active,
                    shape: RoundedRectangleBorder(borderRadius: borderRadius),
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/pancakes.svg'),
                        ),
                      ),
                    title: Text('Pancakes'),
                    subtitle: Text('Easy | 30 mins | 180 kcal'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    selectedTileColor: Colors.orange[100],
                    selected: active,
                    shape: RoundedRectangleBorder(borderRadius: borderRadius),
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/pizza.svg'),
                        ),
                      ),
                    title: Text('Pizza'),
                    subtitle: Text('Medium | 40 mins | 300 kcal'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    selectedTileColor: Color.fromARGB(255, 178, 255, 232),
                    selected: active,
                    shape: RoundedRectangleBorder(borderRadius: borderRadius),
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/icecream.svg'),
                        ),
                      ),
                    title: Text('Ice Cream'),
                    subtitle: Text('Easy | 20 mins | 150 kcal'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    selectedTileColor: const Color.fromARGB(255, 178, 255, 232),
                    selected: active,
                    shape: RoundedRectangleBorder(borderRadius: borderRadius),
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/pancakes.svg'),
                        ),
                      ),
                    title: Text('Pancakes'),
                    subtitle: Text('Easy | 30 mins | 180 kcal'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    selectedTileColor: Colors.orange[100],
                    selected: active,
                    shape: RoundedRectangleBorder(borderRadius: borderRadius),
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/pizza.svg'),
                        ),
                      ),
                    title: Text('Pizza'),
                    subtitle: Text('Medium | 40 mins | 300 kcal'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    selectedTileColor: Color.fromARGB(255, 178, 255, 232),
                    selected: active,
                    shape: RoundedRectangleBorder(borderRadius: borderRadius),
                    leading: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/icecream.svg'),
                        ),
                      ),
                    title: Text('Ice Cream'),
                    subtitle: Text('Easy | 20 mins | 150 kcal'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
