import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perfect_body/widgets/NavigationDrawerWidget.dart';

class FullBody extends StatefulWidget {
  static var title;

  @override
  FullBodyState createState() => FullBodyState();
}

class FullBodyState extends State<FullBody> {
  int bottomIndex = 0;
  switchIndex(int i) {
    setState(() {
      bottomIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Lose Weight",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      drawer: NavigationDrawerWidget(),
      body: WorkoutCard(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i) {
          switchIndex(i);
        },
        currentIndex: bottomIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: "plan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: "report",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
          ),
        ],
      ),
    );
  }
}

class WorkoutCard extends StatelessWidget {
  final List<String> _listItem = [
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 7,
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(25),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(4.2, 5.4, 4.2, 0),
                  child: Image.asset(
                    'assets/fitness.jpg',
                    // height: 500,
                    width: 500,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: RaisedButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: Text(
                        'Day 1',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  bottom: 10,
                  left: 100,
                  width: 230,
                  height: 40,
                ),
              ],
            ),
            //         SizedBox(
            //           height: 20,
            //         ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(4.2, 5.4, 4.2, 0),
                  child: Image.asset(
                    'assets/time-background-concept-vintage-classic-alarm-clock-yellow-empty-management-comcept-174343445.jpg',
                    // height: 500,
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  child: Column(
                    children: [
                      Text(
                        "2-7 min fast workout",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Not enough time? \n 2-7 minutes to do anything anywhere",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 15),
                      ),
                    ],
                  ),
                  bottom: 40,
                  left: 0,
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                ),
              ],
            ),
            //         SizedBox(
            //           height: 20,
            //         ),
            //         Text(
            //           "Body focus",
            //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            //         ),
            //         Expanded(
            //             child: GridView.count(
            //           crossAxisCount: 2,
            //           crossAxisSpacing: 10,
            //           mainAxisSpacing: 10,
            //           children: _listItem
            //               .map((item) => Card(
            //                     color: Colors.transparent,
            //                     elevation: 0,
            //                     child: Container(
            //                       decoration: BoxDecoration(
            //                           borderRadius: BorderRadius.circular(20),
            //                           image: DecorationImage(
            //                               image: AssetImage(item), fit: BoxFit.cover)),
            //                       child: Transform.translate(
            //                         offset: Offset(50, -50),
            //                         child: Container(
            //                           margin: EdgeInsets.symmetric(
            //                               horizontal: 65, vertical: 63),
            //                           decoration: BoxDecoration(
            //                               borderRadius: BorderRadius.circular(10),
            //                               color: Colors.white),
            //                           child: Icon(
            //                             Icons.bookmark_border,
            //                             size: 15,
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ))
            //               .toList(),
            //         ))
          ],
        ),
      ),
    );
  }
}
