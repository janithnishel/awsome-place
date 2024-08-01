import 'package:app4/const/colors.dart';
import 'package:app4/widget/share/content_box.dart';
import 'package:app4/widget/share/custom_button.dart';
import 'package:app4/widget/share/rate_section.dart';
import 'package:flutter/material.dart';

class Culture extends StatelessWidget {
  const Culture({super.key});

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
          'Cultural',
          style: TextStyle(color: Color(0xffC00C00), fontSize: 25),
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
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/culture.png",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                    color: tmainTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Rate this Place",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: tnightLifeColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const RateSection(),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                    color: tmainTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Send Feedback",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: tnightLifeColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              contentBox(),
              const SizedBox(
                height: 20,
              ),
              // ignore: prefer_const_constructors
              CustomButtom(
                  title: "Submit",
                  buttonWidth: 120,
                  buttonHeight: 40,
                  buttonColor: tthirdCardColor,buttonFontSize: 16),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
