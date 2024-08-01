import 'package:app4/const/colors.dart';
import 'package:app4/pages/cultural_page.dart';
import 'package:app4/pages/landmarks._page.dart';
import 'package:app4/pages/natural_page.dart';
import 'package:app4/pages/night_life_page.dart';
import 'package:app4/pages/tour_page.dart';
import 'package:app4/widget/reusable/text_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Awesome",
                          style: TextStyle(color: tsubMainColor, fontSize: 15),
                        ),
                        Text(
                          "Places",
                          style: TextStyle(
                              color: tmainColor,
                              fontSize: 40,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: tmainColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                  style: TextStyle(
                      color: tmainTextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset("assets/sigiriya.png", fit: BoxFit.cover),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Select a Place from the categories",
                  style: TextStyle(
                      color: tmainColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NaturalWonder())),
                      child: const TextCard(
                          cardColor: tfirstCardColor,
                          cardWidth: 140,
                          cardHeight: 75,
                          title: "Natural Wonders"),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NightLife())),
                      child: const TextCard(
                          cardColor: tfirstCardColor,
                          cardWidth: 140,
                          cardHeight: 75,
                          title: "Nightlife"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Landmarks())),
                      child: const TextCard(
                          cardColor: tsecondCardColor,
                          cardWidth: 140,
                          cardHeight: 75,
                          title: "Landmarks"),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Culture())),
                      child: const TextCard(
                          cardColor: tsecondCardColor,
                          cardWidth: 140,
                          cardHeight: 75,
                          title: "Cultural"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Tour()),
                  ),
                  child: const TextCard(
                      cardWidth: double.infinity,
                      cardHeight: 75,
                      cardColor: tthirdCardColor,
                      title: "Book For A Ride Today!"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
