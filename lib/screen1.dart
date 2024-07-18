import 'package:flutter/material.dart';
import 'package:simplequizapp/result_page.dart';
import 'data.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.indigo, Colors.deepPurple],
                end: Alignment.topLeft,
                begin: Alignment.bottomLeft)),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 70,
                              width: 400,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.indigo,
                                        Colors.deepPurple
                                      ],
                                      end: Alignment.topLeft,
                                      begin: Alignment.bottomLeft),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Q${index + 1}: ${Question[index]}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                atempAns.add(op1[index]);
                                print('op1');
                              },
                              child: Container(
                                height: 60,
                                width: 180,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.indigo,
                                          Colors.deepPurple
                                        ],
                                        end: Alignment.topLeft,
                                        begin: Alignment.bottomLeft),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black)),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'A) ${op1[index]}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      ),
                                    )),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                onTap: () {
                                  atempAns.add(op2[index]);
                                  print('opt2');
                                },
                                child: Container(
                                  height: 60,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.indigo,
                                          Colors.deepPurple
                                        ],
                                        end: Alignment.topLeft,
                                        begin: Alignment.bottomLeft),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('B) ${op2[index]}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                onTap: () {
                                  atempAns.add(op3[index]);
                                  print('opt3');
                                },
                                child: Container(
                                  height: 60,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.indigo,
                                            Colors.deepPurple
                                          ],
                                          end: Alignment.topLeft,
                                          begin: Alignment.bottomLeft),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.black)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('C) ${op3[index]}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                onTap: () {
                                  atempAns.add(op4[index]);
                                  print('op4');
                                },
                                child: Container(
                                  height: 60,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            Colors.indigo,
                                            Colors.deepPurple
                                          ],
                                          end: Alignment.topLeft,
                                          begin: Alignment.bottomLeft),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.black)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('D) ${op4[index]}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  var marks = 0;
                  for (int i = 0; i <= correctAns.length; i++) {
                    if (atempAns[i] == correctAns.length) {
                      print({'Correct'});
                      marks++;
                    } else {
                      print({'Wrong'});
                    }
                  }
                  print('This is Atemp Answer $atempAns');

                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => ResultPage()));
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.indigo, Colors.deepPurple],
                        end: Alignment.topLeft,
                        begin: Alignment.bottomLeft),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                      child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
