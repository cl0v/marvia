//TODO:  Fundo ROXO
//Efeitindo de letras subindo e aparecendo com o tempo
// Aumentando a opacidade e subindo o alinhamento
// Dividir em duas partes, a parte de sobre o App para clientes e para vendedores

import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  subTitle(String text, BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: Colors.white60),
    );
  }

  info(
    BuildContext context,
    String text,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 16),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(color: Colors.white, fontSize: 18),
      ),
    );
  }

  section(String title, String text, BuildContext context) {
    return  Column(
        children: [
          subTitle(
            title,
            context,
          ),
          info(context, text),
        ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900]?.withOpacity(.5),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(),
              section(
                'Leitores',
                'Nesse app, você terá acesso a todos os livros já publicados, pagando apenas pelo que consumir do livro.\nPara isso facilitamos a sua pesquisa para torná-la o mais eficiente possível.',
                context,
              ),

              section(
                'Escritores',
                'Se você deseja publicar seus livros com a gente, saiba que nós iremos te retornar até 98% dos lucros.\nIremos sempre tentar te ajudar das mais difersas formas.',
                context,
              ), // Titulo,

              SizedBox(),
              SizedBox(),
            ],
          )),
    );
  }
}
