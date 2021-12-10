import 'package:flutter/material.dart';

class CalCulyator extends StatefulWidget {
  const CalCulyator({Key? key}) : super(key: key);

  @override
  State<CalCulyator> createState() => _CalCulyatorState();
}

class _CalCulyatorState extends State<CalCulyator> {
  List jami = [];
  int _kun = 1;
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: _kun.isOdd ? Colors.blueGrey.shade700 : Colors.black45,
        appBar: AppBar(
          elevation: 8,
          backgroundColor:
              _kun.isOdd ? Colors.blueGrey.shade700 : Colors.black45,
          centerTitle: true,
          title: const Text(
            "Calculator",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            OutlinedButton(
              onPressed: () {
                jami.removeLast();
                setState(() {});
              },
              child: Container(
                height: 330,
                width: double.infinity,
                color: Colors.white60,
                child: Center(
                  child: Text(
                    jami.join(),
                    style: const TextStyle(fontSize: 35, color: Colors.black),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _kun.isOdd
                          ? IconButton(
                              onPressed: () {
                                _kun += 1;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.wb_incandescent,
                                size: 28,
                              ),
                              color: Colors.white,
                            )
                          : IconButton(
                              onPressed: () {
                                _kun += 1;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.wb_incandescent_outlined,
                                size: 28,
                              ),
                              color: Colors.white,
                            ),
                      IconButton(
                        onPressed: () {
                          jami.removeLast();
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.backspace_outlined,
                          size: 28,
                        ),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const Divider(color: Colors.white70),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.add(7);
                          setState(() {});
                        },
                        child: const Text(
                          "7",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.add(8);
                          setState(() {});
                        },
                        child: const Text(
                          "8",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.add(9);
                          setState(() {});
                        },
                        child: const Text(
                          "9",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.last == "%" ||
                                  jami.last == "+" ||
                                  jami.last == "-" ||
                                  jami.last == "x"
                              ? setState(() {
                                  jami.removeLast();
                                  jami.add("%");
                                })
                              : setState(() {
                                  jami.add("%");
                                });
                        },
                        child: const Text(
                          "%",
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.add(4);
                          setState(() {});
                        },
                        child: const Text(
                          "4",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.add(5);
                          setState(() {});
                        },
                        child: const Text(
                          "5",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.add(6);
                          setState(() {});
                        },
                        child: const Text(
                          "6",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.last == "%" ||
                                  jami.last == "+" ||
                                  jami.last == "-" ||
                                  jami.last == "x"
                              ? setState(() {
                                  jami.removeLast();
                                  jami.add("x");
                                })
                              : setState(() {
                                  jami.add("x");
                                });
                        },
                        child: const Text(
                          "x",
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.add(1);
                          setState(() {});
                        },
                        child: const Text(
                          "1",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.add(2);
                          setState(() {});
                        },
                        child: const Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.add(3);
                          setState(() {});
                        },
                        child: const Text(
                          "3",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.last == "%" ||
                                  jami.last == "+" ||
                                  jami.last == "-" ||
                                  jami.last == "x"
                              ? setState(() {
                                  jami.removeLast();
                                  jami.add("-");
                                })
                              : setState(() {
                                  jami.add("-");
                                });
                        },
                        child: const Text(
                          "-",
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.clear();
                          setState(() {});
                        },
                        child: const Text(
                          "C",
                          style: TextStyle(color: Colors.red, fontSize: 40),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.add(0);
                          setState(() {});
                        },
                        child: const Text(
                          "0",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          hisobla();
                        },
                        child: const Text(
                          "=",
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 60),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _kun.isOdd
                              ? Colors.blueGrey.shade500
                              : Colors.blueGrey.shade800,
                          minimumSize: const Size(80, 70),
                          shadowColor: Colors.black54,
                          elevation: 8,
                        ),
                        onPressed: () {
                          jami.last == "%" ||
                                  jami.last == "+" ||
                                  jami.last == "-" ||
                                  jami.last == "x"
                              ? setState(() {
                                  jami.removeLast();
                                  jami.add("+");
                                })
                              : setState(() {
                                  jami.add("+");
                                });
                        },
                        child: const Text(
                          "+",
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  hisobla() {
    for (var i = 0; i < jami.length; i++) {
      List lst = [];
      if (jami[i] == "+") {
        lst = jami.join().split("+").toList();
        jami.clear();
        jami.add(int.parse(lst[0]) + int.parse(lst[1]));
        setState(() {});
      } else if (jami[i] == "-") {
        lst = jami.join().split("-").toList();
        jami.clear();
        jami.add(int.parse(lst[0]) - int.parse(lst[1]));
        setState(() {});
      } else if (jami[i] == "x") {
        lst = jami.join().split("x").toList();
        jami.clear();
        jami.add(int.parse(lst[0]) * int.parse(lst[1]));
        setState(() {});
      } else if (jami[i] == "%") {
        lst = jami.join().split("%").toList();
        jami.clear();
        jami.add(num.parse(lst[0]) / num.parse(lst[1]));
        setState(() {});
      }
    }
  }
}
