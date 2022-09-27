import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                'Informações',
                style: GoogleFonts.satisfy(
                  color: const Color(0xFF299b3d),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Column(
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Sistema de agendamento \n',
                ),
              ),
              RichText(
                text: const TextSpan(
                    text:
                        'O principal objetivo desse sistema é evitar o desperdicio Veja abaixo algumas normas'),
              ),
            ],
          ),
          const Icon(
            Icons.done,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
