import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  // const PointsCounter({super.key});
  int team_A_point = 0;

  int team_B_point = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: const Text('Points Counter'),
        ),
        //////////////------------------------- body -------------------------
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // const SizedBox(
            //   height: 50,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /////////////////// ----------------- column 1 --------------------------
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$team_A_point',
                      style: const TextStyle(
                        fontSize: 140,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[900],
                            minimumSize: const Size(110, 45)),
                        onPressed: () {
                          // team_A_point++;
                          setState(() {
                            team_A_point++;
                          });
                          // print(team_A_point);
                        },
                        child: const Text('Add 1 point')),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green[900],
                              minimumSize: const Size(110, 45)),
                          onPressed: () {
                            setState(() {
                              team_A_point = team_A_point + 2;
                            });
                          },
                          child: const Text('Add 2 point')),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[900],
                            minimumSize: const Size(110, 45)),
                        onPressed: () {
                          setState(() {
                            team_A_point = team_A_point + 3;
                          });
                        },
                        child: const Text('Add 3 point')),
                  ],
                ),
                /////////////----------------- verticaldivider --------------
                const SizedBox(
                  height: 380,
                  child: VerticalDivider(
                    thickness: 2.0,
                    color: Colors.grey,
                  ),
                ),
                // devider(2, 200),

                //////////------------------------ column 2------------------
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$team_B_point',
                      style: const TextStyle(
                        fontSize: 140,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[900],
                            minimumSize: const Size(110, 45)),
                        onPressed: () {
                          setState(() {
                            team_B_point++;
                          });
                        },
                        child: const Text('Add 1 point')),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green[900],
                              minimumSize: const Size(110, 45)),
                          onPressed: () {
                            setState(() {
                              team_B_point += 2;
                            });
                          },
                          child: const Text('Add 2 point')),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[900],
                            minimumSize: const Size(110, 45)),
                        onPressed: () {
                          setState(() {
                            team_B_point += 3;
                          });
                        },
                        child: const Text('Add 3 point')),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[900],
                  minimumSize: const Size(170, 50)),
              onPressed: () {
                setState(() {
                  team_A_point = 0;
                  team_B_point = 0;
                });
              },
              child: const Text('Reset'),
            )
          ],
        ),
      ),
    );
  }
}

// Widget devider(wx, hy) => Container(
//       width: wx,
//       height: hy,
//       color: Colors.grey,
//     );
