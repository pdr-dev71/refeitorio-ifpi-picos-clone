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
              onTap: () {},
            ),
            ListTile(
              textColor: Colors.white,
              title: const Text('Cardápio'),
              onTap: () {},
            ),
            ListTile(
              textColor: Colors.white,
              title: const Text('Cadastre-se'),
              onTap: () {},
            ),
            ListTile(
              textColor: Colors.white,
              title: const Text('Login'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: screenHeight * .4,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 61, 65, 71),
                      image: DecorationImage(
                        image: const AssetImage(
                          'assets/images/img-banner.jpg',
                        ),
                        fit: BoxFit.fill,
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
        ],
      ),
    );
  }

  Widget Sobre() {
    return Column();
  }
}
