import 'package:bmi/variables/variables.dart';
import 'package:flutter/material.dart';

class BmiCalcPage extends StatefulWidget {
  const BmiCalcPage({Key? key}) : super(key: key);

  @override
  State<BmiCalcPage> createState() => _BmiCalcPageState();
}

class _BmiCalcPageState extends State<BmiCalcPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff373451),
        centerTitle: true,
        elevation: 5,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: const Color(0xff373451),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 28,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        tap = true;
                        tap2 = false;
                        (tap) ? (femaleh = 160) : femaleh;
                        (tap) ? (femalew = 160) : femalew;
                        (tap) ? (maleh = 100) : maleh;
                        (tap) ? (malew = 80) : malew;
                      });
                    },
                    child: Ink(
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: femaleh,
                        width: femalew,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.woman,
                              size: femaleicon,
                              color: (tap) ? Colors.yellow : Colors.white,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: femaletext,
                                color: (tap) ? Colors.yellow : Colors.white,
                                fontWeight:
                                    (tap) ? FontWeight.bold : FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: (tap)
                              ? const Color(0xff3b3c4d)
                              : const Color(0xff202136),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  InkWell(
                    onTap: () {
                      setState(() {
                        tap2 = true;
                        tap = false;
                        (tap2) ? (maleh = 160) : maleh;
                        (tap2) ? (malew = 160) : malew;

                        (tap2) ? (femaleh = 100) : femaleh;
                        (tap2) ? (femalew = 80) : femalew;
                      });
                    },
                    child: Ink(
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: maleh,
                        width: malew,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.man,
                              size: maleicon,
                              color: (tap2) ? Colors.yellow : Colors.white,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: maletext,
                                color: (tap2) ? Colors.yellow : Colors.white,
                                fontWeight: (tap2)
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: (tap2)
                              ? const Color(0xff3b3c4d)
                              : const Color(0xff1d1e33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 28,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 180,
                    width: 160,
                    decoration: boxdecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Weight",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "$Weight",
                          style: const TextStyle(
                            fontSize: 50,
                            color: Colors.yellow,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (Weight > 0) {
                                    Weight--;
                                  }
                                  weightdown = true;
                                  weightup = false;
                                });
                              },
                              child: Ink(
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: (weightdown)
                                          ? Colors.yellow
                                          : Colors.white,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (weightdown)
                                        ? const Color(0xff6e6f7a)
                                        : const Color(0xff4c4f5e),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Weight++;
                                  weightdown = false;
                                  weightup = true;
                                });
                              },
                              child: Ink(
                                child: Container(
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: (weightup)
                                        ? Colors.yellow
                                        : Colors.white,
                                  ),
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (weightup)
                                        ? const Color(0xff6e6f7a)
                                        : const Color(0xff4c4f5e),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 160,
                    decoration: boxdecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Age",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "$Age",
                          style: const TextStyle(
                            fontSize: 50,
                            color: Colors.yellow,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (Age > 0) {
                                    Age--;
                                  }
                                  agedown = true;
                                  ageup = false;
                                });
                              },
                              child: Ink(
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: (agedown)
                                          ? Colors.yellow
                                          : Colors.white,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (agedown)
                                        ? const Color(0xff6e6f7a)
                                        : const Color(0xff4c4f5e),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Age++;
                                  ageup = true;
                                  agedown = false;
                                });
                              },
                              child: Ink(
                                child: Container(
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color:
                                        (ageup) ? Colors.yellow : Colors.white,
                                  ),
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: (ageup)
                                        ? const Color(0xff6e6f7a)
                                        : const Color(0xff4c4f5e),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 33,
              child: Center(
                child: Container(
                  height: 190,
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        "HEIGHT",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$Sliderval",
                            style: const TextStyle(
                              fontSize: 50,
                              color: Colors.yellow,
                            ),
                          ),
                          const SizedBox(width: 7),
                          Container(
                            height: 100,
                            alignment: const Alignment(0, 0.2),
                            child: const Text(
                              "cm",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.yellow,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: Sliderval.toDouble(),
                        onChanged: (val) {
                          setState(() {
                            Sliderval = val.toInt();
                          });
                        },
                        thumbColor: Colors.yellow,
                        activeColor: Colors.yellow,
                        inactiveColor: const Color(0xff555555),
                        max: 270,
                        min: 90,
                      ),
                    ],
                  ),
                  decoration: boxdecoration,
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: InkWell(
                onTap: () {
                  showGeneralDialog(
                    context: context,
                    pageBuilder: (context, animation1, animation2) {
                      return Container();
                    },
                    transitionBuilder:
                        (context, animation1, animation2, child) {
                      var curve = Curves.easeInOut.transform(animation1.value);
                      return Transform.scale(
                        scale: curve,
                        child: AlertDialog(
                          backgroundColor: const Color(0xff4c4f5e),
                          content: Container(
                            height: 300,
                            width: 300,
                            color: const Color(0xff4c4f5e),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Center(
                                  child: Text(
                                    "Your BMI",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Bmi(),
                                ),
                                const Text(
                                  " Normal(Healthy Weight)",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                "OK",
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    transitionDuration: const Duration(milliseconds: 700),
                  );
                },
                child: Ink(
                  child: Container(
                    height: 75,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const Text(
                      "Calculate",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                      ),
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Bmi() {
    finalWeight = Sliderval / 100;
    bmi = Weight / (finalWeight * finalWeight);
    return Text(
      bmi.toStringAsFixed(2),
      style: const TextStyle(
        fontSize: 60,
        color: Colors.white,
      ),
    );
  }
}
