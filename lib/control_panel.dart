import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          )
        ],
        centerTitle: true,
        title: Text(
          'Restaurante',
          style: GoogleFonts.satisfy(
            fontSize: 22,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight * .13,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Painel de controle',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ausências: 0',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: const Color(0xFF007065),
                    width: 80,
                    height: 80,
                    child: const Icon(
                      Icons.restaurant,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 80,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 120.0, top: 20),
                              child: Column(
                                children: const [
                                  Text(
                                    'AGENDAR',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    '100 vagas restantes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.amber[400],
                    width: 80,
                    height: 80,
                    child: const Icon(
                      Icons.access_time_filled,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 80,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 120.0, top: 30),
                          child: Column(
                            children: const [
                              Text(
                                'TEMPO RESTANTE',
                              ),
                              Text(
                                '00 dias 00:00:00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red[400],
                    width: 80,
                    height: 80,
                    child: const Icon(
                      Icons.not_interested,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 80,
                    color: Colors.white,
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 120.0, top: 30),
                          child: Text(
                            'CANCELAR RESERVA',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
