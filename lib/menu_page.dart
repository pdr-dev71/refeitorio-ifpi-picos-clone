import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Cardápio da semana',
                      style: GoogleFonts.satisfy(
                        color: const Color(0xFF299b3d),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Veja abaixo o cardápio da semana.',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(18),
                    child: Table(
                      defaultColumnWidth: const FixedColumnWidth(90),
                      border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1),
                      children: [
                        TableRow(children: [
                          Column(children: const [
                            Text('Segunda-Feira',
                                style: TextStyle(fontSize: 16.0))
                          ]),
                          Column(children: const [
                            Text('Tutorial', style: TextStyle(fontSize: 20.0))
                          ]),
                          Column(children: const [
                            Text('Review', style: TextStyle(fontSize: 20.0))
                          ]),
                        ]),
                        TableRow(children: [
                          Column(children: const [Text('Javatpoint')]),
                          Column(children: const [Text('Flutter')]),
                          Column(children: const [Text('5*')]),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
