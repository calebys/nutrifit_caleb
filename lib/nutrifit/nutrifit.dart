import 'package:flutter/material.dart';
import '../style/nutrifit_style.dart';

class Nutrifit extends StatelessWidget {
  const Nutrifit({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> servicos = [
      'Consulta Nutricional',
      'Plano Alimentar Personalizado',
      'Acompanhamento Semanal',
      'Bioimpedância',
      'Receitas Fit',
    ];

    return Scaffold(
      backgroundColor: NutrifitStyle.branco,

      body: ListView(
        children: [

          // LOGO
          Center(
            child: Image.asset(
              'assets/image/nutrifit.png',
              width: 210,
              height: 210,
            ),
          ),

          // FOTO DA COMIDA
          Center(
            child: Image.asset(
              'assets/image/prato.png',
              width: 320,
              height: 220,
            ),
          ),

          // FRASE
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            child: Text(
              'Saúde e sabor para transformar sua rotina.',
              textAlign: TextAlign.center,
              style: NutrifitStyle.frase,
            ),
          ),

          // TÍTULO
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 5,
            ),
            child: Text(
              'Nossos serviços',
              style: NutrifitStyle.titulo,
            ),
          ),

          const SizedBox(height: 10),

          // SERVIÇOS
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: servicos.length,
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  width: 330,
                  margin: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: NutrifitStyle.verde,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    servicos[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              );
            },
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}