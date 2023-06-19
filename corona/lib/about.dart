// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({Key? key}) : super(key: key);
  static String id = 'About';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        // color: Color(0xFFF7CCD6),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/corona1.jpg'),
            opacity: 1,
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'What is COVID-19 ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "COVID-19 is an infectious disease caused by the most recently discovered Coronavirus.\n"
                  " This new virus and disease were unknown before the outbreak began in Wuhan, China,\n"
                  "in December 2019.\n",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Incubation period for COVID-19 ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  " Incubation period for COVID-19 is 1-14 days, most commonly around 5 days.\n"
                  " The disease causes respiratory illness (like the flu) with symptoms\n"
                  " such as a cough, fever, and in more severe cases, difficulty breathing.\n"
                  " COVID-19 virus may persist on surfaces for a few hours or up to several days.\n"
                  " This may vary under different conditions:\n"
                  " (e.g. type of surface, temperature or humidity of the environment).\n",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Treatment for Coronavirus ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "There is no specific medicine to prevent or treat coronavirus disease (COVID-19).\n\n"
                  " People may need supportive care to help them breathe.\n"
                  "Self-care: If you have mild symptoms, stay at home until you’ve recovered.\n"
                  " You can relieve your symptoms if you:\n\n"
                  "- rest and sleep\n"
                  "- keep warm\n"
                  "- drink plenty of liquids\n"
                  "-use a room humidifier or take a hot shower to help ease a sore throat and cough\n",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'How to Avoid COVID-19  ?',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "but there are some preventive actions you can take and follow regularly to keep yourself safe from coronavirus. You can protect yourself and help prevent spreading the virus to others if you:\n\n"
                  "1- Wash your hand often\n\n"
                  "2-Avoid touching your face, eyes , nose and mouth\n\n"
                  "3-Avoid crowded places\n\n"
                  "4-Stay at home\n\n"
                  "5-Avoid close contact with anybody having respiratory symptoms\n\n"
                  "6- Cover your mouth and nose while you are sneezing or coughing\n\n"
                  "7- Stay well hydrated"
                  "8- Seek medical advice if you feel sick"
                  " Do:\n\n"
                  "* Wash your hands regularly for 20 seconds, with soap and water or alcohol-based hand rub\n\n"
                  "* Cover your nose and mouth with a disposable tissue when you cough or sneeze\n\n"
                  "* Avoid close contact (1 meter or 3 feet) with people who are unwell\n\n"
                  "* Stay home and self-isolate from others in the household if you feel unwell\n\n"
                  "Don't:\n\n"
                  "* Touch your eyes, nose, or mouth hands are not clean\n\n",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
