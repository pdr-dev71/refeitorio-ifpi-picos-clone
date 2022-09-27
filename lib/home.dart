import 'package:flutter/material.dart';

class HomeIfpi extends StatelessWidget {
  const HomeIfpi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          //backgroundColor: Colors.transparent,
          ),
      body: Column(
        children: const [],
      ),
    );
  }
}
