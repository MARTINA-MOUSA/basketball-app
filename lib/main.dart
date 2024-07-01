import 'package:flutter/material.dart';

void main() {
  runApp(BasketballPoints());
}

class BasketballPoints extends StatefulWidget {
  @override
  State<BasketballPoints> createState() => _BasketballPointsState();
}

class _BasketballPointsState extends State<BasketballPoints> {
  int teamApoint = 0;
  int teamBpoint = 0;
  void addOnpoint() {
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points counter'),
          backgroundColor: Colors.pink,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 34,
                        ),
                      ),
                      Text(
                        '$teamApoint',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pink, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamApoint++;
                          });
                          print(teamApoint);
                        },
                        child: Text(
                          'Add 1 point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pink, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamApoint = teamApoint + 2;
                          });
                          print(teamApoint);
                        },
                        child: Text(
                          'Add 2 point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,

                        ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pink, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamApoint = teamApoint + 3;
                          });
                          print(teamApoint);
                        },
                        child: Text(
                          'Add 3 point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 12,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 34,
                        ),
                      ),
                      Text(
                        '$teamBpoint',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pink, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBpoint++;
                          });
                          print(teamBpoint);
                        },
                        child: Text(
                          'Add 1 point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pink, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBpoint = teamBpoint + 2;
                          });
                          print(teamBpoint);
                        },
                        child: Text(
                          'Add 2 point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pink, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            teamBpoint = teamBpoint + 3;
                          });
                          print(teamBpoint);
                        },
                        child: Text(
                          'Add 3 point ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.pink, minimumSize: Size(150, 50)),
              onPressed: () {
                setState(() {
                  teamBpoint = 0;
                  teamApoint = 0;
                });
                print(teamBpoint);
                print(teamApoint);
              },
              child: Text(
                'Reset ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
