import 'package:flutter/material.dart';

class HomeIfpi extends StatelessWidget {
  const HomeIfpi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              textColor: Colors.white,
              title: const Text(
                'Sobre',
              ),
              onTap: () {
                Navigator.of(context).pushNamed('About');
              },
            ),
            ListTile(
              textColor: Colors.white,
              title: const Text('Cardápio'),
              onTap: () {
                Navigator.of(context).pushNamed('Menu');
              },
            ),
            ListTile(
              textColor: Colors.white,
              title: const Text('Cadastre-se'),
              onTap: () {
                Navigator.of(context).pushNamed('Register');
              },
            ),
            ListTile(
              textColor: Colors.white,
              title: const Text('Login'),
              onTap: () {
                Navigator.of(context).pushNamed('Login');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                height: screenHeight,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 61, 65, 71),
                  image: DecorationImage(
                    image: const AssetImage(
                      'assets/images/img-banner.jpg',
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6),
                      BlendMode.dstATop,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'Restaurante - Mambee',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0xFFffb03b),
            ),
          ),
        ],
      ),
    );
  }
}
