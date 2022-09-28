// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  Text(
                    'Sistema de agendamento',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'O principal objetivo desse sistema é evitar o desperdicio Veja abaixo algumas normas',
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.done,
                        color: Colors.red,
                      ),
                      Text(
                        'O novo horário do jantar será de 17h30m as 18h45m',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      const Icon(
                        Icons.done,
                        color: Colors.red,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .9,
                        child: const Text(
                          'Manter cadastro atualizado, pois os dados serão validados pelo serviço social do campus',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      const Icon(
                        Icons.done,
                        color: Colors.red,
                      ),
                      Container(
                        width: screenWidth * .9,
                        child: const Text(
                          'Reservar sua vaga até as 14:00h do dia em questão',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      const Icon(
                        Icons.done,
                        color: Colors.red,
                      ),
                      Container(
                        width: screenWidth * .9,
                        child: const Text(
                          'Cancelar sua vaga até as 14:00h, caso não vá mais utilizar',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      const Icon(
                        Icons.done,
                        color: Colors.red,
                      ),
                      Container(
                        width: screenWidth * .9,
                        child: const Text(
                          "O aluno que acumular duas ausências agendadas e não canceladas, terá seu cadastro desativado, e deverá comparecer ao setor de Assitência Social para revalidar o seu cadastro.",
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
