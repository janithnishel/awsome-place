import 'package:app4/const/colors.dart';
import 'package:app4/widget/share/places_description.dart';
import 'package:flutter/material.dart';

class NightLife extends StatelessWidget {
  const NightLife({super.key});

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
          'Nightlife',
          style: TextStyle(color: tnightLifeColor, fontSize: 25),
        ),
        backgroundColor: tmainWhite,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
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
              PalacesDescription(
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                title: "Nightlife Place-1",
                imageUrl: "assets/night1.png",
                titleColor: tsubNightLifeColor,
                isRound: true,
              ),
              const SizedBox(
                height: 20,
              ),
              PalacesDescription(
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                title: "Nightlife Place-2",
                imageUrl: "assets/night2.png",
                titleColor: tsubNightLifeColor,
                isRound: true,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
