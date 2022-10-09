import 'package:flutter/material.dart';

int Sliderval = 150;

int Weight = 50;
int Age = 28;

bool weightup = false;
bool weightdown = false;

bool ageup = false;
bool agedown = false;

bool tap = false;
bool tap2 = false;

var backColor = const Color(0xff090e21);
var backColor2 = const Color(0xff1d1e33);

late double bmi;
late double finalWeight;

double maleh = 100;
double malew = 80;

double femaleh = 100;
double femalew = 80;

double maleicon = 50;
double femaleicon = 50;

double maletext = 15;
double femaletext = 15;

var boxdecoration = BoxDecoration(
  color: const Color(0xff1d1e33),
  borderRadius: BorderRadius.circular(10),
);
