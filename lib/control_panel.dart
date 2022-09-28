import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[850],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[850],
              ),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://www.mundoecologia.com.br/wp-content/uploads/2020/01/Jegue-de-Boca-Aberta-e1579267809814.jpg'),
                  ),
                  SizedBox(width: 15),
                  Text(
                    '20191TADS0202',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              horizontalTitleGap: 0.2,
              leading: const Icon(
                Icons.speed,
                color: Colors.white,
                size: 28,
              ),
              title: const Text(
                'Painel de controle',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              horizontalTitleGap: 0.2,
              trailing: const Icon(
                Icons.chevron_right,
                color: Colors.white,
                size: 28,
              ),
              leading: const Icon(
                Icons.description,
                color: Colors.white,
                size: 28,
              ),
              title: const Text(
                'Relatórios',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        automaticallyImplyLeading: false,
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
