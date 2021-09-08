import 'package:flutter/material.dart';

///Lista os capitulos disponíveis 
class ChapterListScreen extends StatefulWidget {
  const ChapterListScreen({ Key? key }) : super(key: key);

  @override
  _ChapterListScreenState createState() => _ChapterListScreenState();
}

class _ChapterListScreenState extends State<ChapterListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livro x'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => ListTile(
          title: Text('Capitulo $index'),
          onTap: (){
            //Vai para o reader
          },
        ),
      ),
    );
  }
}