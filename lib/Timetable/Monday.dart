import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/Timetable_class_Widget.dart';

import '../Constants.dart';
import '../MainScreen.dart';
import '../Widgets/Timetable_day_Widget.dart';

class Monday extends StatelessWidget {
  const Monday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //* To get the size of the screen
    double vicwInset = MediaQuery.of(context)
        .viewInsets
        .bottom; //* To Know that keyboard is open or not
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomRight,
              // color: Colors.amber,
              height: 50,
              width: 50,
              child: IconButton(
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ),
                        ),
                      },
                  icon: const Icon(Icons.arrow_back)),
            ),
            Container(
              alignment: Alignment.topLeft,
              // color: Colors.blue,
              height: 40,
              width: size.width,
              padding: const EdgeInsets.only(left: 50),
              margin: const EdgeInsets.only(bottom: 0),
              child: const Text(
                "Timetable",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              // color: Colors.amberAccent,
              height: 50,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Timetable_day_Widget(
                    Day: "M",
                    mColor: kPrimaryColor,
                    Daycolor: Colors.white,
                  ),
                  Timetable_day_Widget(
                    Day: "T",
                    mColor: kSecondaryColor,
                    Daycolor: Colors.black,
                  ),
                  Timetable_day_Widget(
                    Day: "W",
                    mColor: kSecondaryColor,
                    Daycolor: Colors.black,
                  ),
                  Timetable_day_Widget(
                    Day: "T",
                    mColor: kSecondaryColor,
                    Daycolor: Colors.black,
                  ),
                  Timetable_day_Widget(
                    Day: "F",
                    mColor: kSecondaryColor,
                    Daycolor: Colors.black,
                  ),
                  Timetable_day_Widget(
                    Day: "S",
                    mColor: kSecondaryColor,
                    Daycolor: Colors.black,
                  ),
                  Timetable_day_Widget(
                    Day: "S",
                    mColor: kSecondaryColor,
                    Daycolor: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
              // color: Colors.amber,
              height: 600,
              width: size.width,
              child: Column(
                children: const [
                  Timetable_class_Widget(
                      Classlocation: "LT212",
                      Classname: "CS211 - Operating Syatem",
                      Duration: "2hr",
                      Teacher: "Kumar Nitesh",
                      Time: "10:00 - 12:00"),
                  Timetable_class_Widget(
                      Classlocation: "LT211",
                      Classname: "CS302 - Theory of Computation",
                      Duration: "1.5hr",
                      Teacher: "Ayan Nandy",
                      Time: "1:00 - 2:30"),
                  Timetable_class_Widget(
                      Classlocation: "LT201",
                      Classname: "CS122 - Computer Architecture & Organisation",
                      Duration: "1.5hr",
                      Teacher: "Vikas Upadhyaya",
                      Time: "2:30 - 4:00"),
                  Timetable_class_Widget(
                      Classlocation: "LT212",
                      Classname: "CS201 - Design & Analysis of Algorithms",
                      Duration: "1hr",
                      Teacher: "Sanjay Biswash",
                      Time: "5:00 - 6:00"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
