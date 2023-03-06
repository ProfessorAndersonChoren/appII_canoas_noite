import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/logo.png"),
        title: const Text("Charmander #004"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Image.asset("assets/charmander.png"),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Text(
                  "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda."),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // 1° Linha
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            titleText(
                              text: "Altura",
                              context: context,
                            ),
                            subtitleText(
                              context: context,
                              text: "0.6m",
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            titleText(
                              text: "Peso",
                              context: context,
                            ),
                            subtitleText(
                              text: "8.5kg",
                              context: context,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // 2° Linha
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            titleText(
                              text: "Tipo",
                              context: context,
                            ),
                            customChip(
                              text: "Fogo",
                              backgroundColor: const Color(0xFFF17F2E),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            titleText(
                              text: "Habilidade",
                              context: context,
                            ),
                            subtitleText(
                              text: "Chama",
                              context: context,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Fraquezas",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customChip(
                        text: "Água",
                        backgroundColor: const Color(0xFF688FF3),
                      ),
                      customChip(
                        text: "Terra",
                        backgroundColor: const Color(0xFFF6DE3E),
                      ),
                      customChip(
                        text: "Rocha",
                        backgroundColor: const Color(0xFFA48C22),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  } // Build

  Text titleText({
    required String text,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
    );
  }

  Text subtitleText({
    required String text,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }

  Chip customChip({
    required String text,
    required Color backgroundColor,
  }) {
    return Chip(
      label: Text(text),
      backgroundColor: backgroundColor,
      labelStyle: const TextStyle(
        color: Colors.white,
      ),
    );
  }
}
