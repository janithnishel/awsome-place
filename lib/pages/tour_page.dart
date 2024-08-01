import 'package:app4/const/colors.dart';
import 'package:app4/widget/reusable/vehicle.dart';
import 'package:app4/widget/share/content_box.dart';
import 'package:app4/widget/share/custom_button.dart';
import 'package:app4/widget/share/rate_section.dart';
import 'package:flutter/material.dart';

class Tour extends StatelessWidget {
  const Tour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: tbuttonTextColor,
            )),
        titleSpacing: -15,
        title: const Text(
          'Lets Book A Tour!',
          style: TextStyle(color: tmainColor, fontSize: 25),
        ),
        backgroundColor: tmainWhite,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                    color: tmainTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Select a vehical",
                style: TextStyle(
                    fontSize: 18,
                    color: tmainColor,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Vehicle(
                    imageUrl: "assets/car.png",
                    vehicleTitle: "Car",
                  ),
                  Vehicle(
                    imageUrl: "assets/bike.png",
                    vehicleTitle: "Bike",
                  ),
                  Vehicle(
                    imageUrl: "assets/bus.png",
                    vehicleTitle: "Bus",
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Selected Place",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: tmainColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/culture.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 250,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Selected Place",
                          style: TextStyle(
                              color: tmainWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                          style: TextStyle(
                              color: tmainWhite,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RateSection(),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Fill The Details",
                style: TextStyle(
                    fontSize: 18,
                    color: tmainColor,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "User Name",
                style: TextStyle(
                    color: tsubMainColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              contentBox(hinttext: "John..."),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Country",
                style: TextStyle(
                    color: tsubMainColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              contentBox(hinttext: "Canada..."),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Team Size",
                style: TextStyle(
                    color: tsubMainColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: const BoxDecoration(
                        color: tmainColor, shape: BoxShape.circle),
                    child: const Center(
                        child: Text(
                      "3",
                      style: TextStyle(
                          color: tmainWhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 35),
                    )),
                  ),
                  const Column(
                    children: [
                      SizedBox(
                          width: 220,
                          child: Text(
                            "Add or Remove team members",
                            style: TextStyle(
                                color: Color(0xff6E7A76), fontSize: 15),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 220,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButtom(
                                title: "Add +",
                                buttonWidth: 105,
                                buttonHeight: 35,
                                buttonColor: Color(0xff06FFA5),buttonFontSize: 14),
                            CustomButtom(
                                title: "Remove -",
                                buttonWidth: 105,
                                buttonHeight: 35,
                                buttonColor: Color(0xffFF1E0F),buttonFontSize: 14),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 3,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                    color: tmainTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 30,
              ),

               // ignore: prefer_const_constructors
               CustomButtom(
                  title: "Submit",
                  buttonWidth: 140,
                  buttonHeight: 50,
                  buttonColor: tthirdCardColor,buttonFontSize: 18),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
