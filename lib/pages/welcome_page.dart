import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  Widget buildAppInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(
        children: [
          Image.asset('assets/images/smallview.png'),
          const Text(
            "Willkommen",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 50),
          RichText(
            text: TextSpan(
              text: " Kaufleute im \n E-COMMERCE\n\n",
              style: GoogleFonts.oswald(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              children: [
                TextSpan(
                  text: "   GLOSSAR",
                  style: GoogleFonts.oswald(
                    textStyle: const TextStyle(
                      color: Colors.red,
                      fontSize: 32,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Nutzen Sie dieses Glossar, um Vokabeln, Begriffe und Definitionen zu lernen und zu verstehen.',
              maxLines: 5,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton({required void Function()? onPressedButton}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
          onPressed: onPressedButton,
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "WEITER",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
        ),
        const SizedBox(width: 15)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // App Info
          buildAppInfo(),
          // Button
          buildButton(
            onPressedButton: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
        ],
      ),
    );
  }
}
