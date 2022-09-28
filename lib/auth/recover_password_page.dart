import 'package:flutter/material.dart';

class RecoverPassword extends StatelessWidget {
  const RecoverPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWith = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Card(
                  child: SizedBox(
                    width: screenWith * .9,
                    height: screenHeight * .5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Recuperação de senha',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text('Matricula'),
                                  hintText: 'Informe sua matricula',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text('E-mail'),
                                  hintText: 'Informe seu email',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  label: Text('Nova Senha'),
                                  hintText: 'Informe a senha nova',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    primary: const Color(0xFF007065)),
                                onPressed: () {},
                                label: const Text('Salvar'),
                                icon: const Icon(Icons.check),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
