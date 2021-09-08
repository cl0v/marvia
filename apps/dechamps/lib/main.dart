import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

import 'data.dart';

const kOrangeColor = Color(0xFFEBB886);
const kYellowColor = Color(0xFFF4BF00);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> notifier = ValueNotifier(false);

    onThemeChanged() {
      notifier.value = !notifier.value;
    }

    return ValueListenableBuilder<bool>(
      valueListenable: notifier,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Deschamps News',
          themeMode: value ? ThemeMode.dark : ThemeMode.light,
          darkTheme: ThemeData(
            primaryColor: kOrangeColor,
          ),
          theme: ThemeData(
            primaryColor: kYellowColor,
          ),
          home: HomePage(value, onThemeChanged),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage(this.isDark, this.onThemeChange, {Key? key}) : super(key: key);
  final VoidCallback onThemeChange;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Deschamps News',
          style: TextStyle(
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: onThemeChange,
              icon: isDark
                  ? Icon(
                      Icons.light_mode,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.dark_mode,
                    )),
          BackdropToggleButton(
            icon: AnimatedIcons.view_list,
            color: isDark ? Colors.white : Colors.black,
          ),
          
        ],
      ),
      backLayer: Center(child: Text('Filtros disponíveis')),
      frontLayer: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
          Center(
            child: Text(
              'Notícias do dia',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          ...noticias
              .map((e) => Card(
                child: ExpansionTile(
                      textColor: isDark ? kOrangeColor : kYellowColor,
                      initiallyExpanded: true,
                      title: Text(
                        e.title,
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        e.fonte != null ? 'Fonte: ${e.fonte}' : 'Sem fonte',
                      ),
                      children: [
                        ListTile(title: Text(e.data)),
                      ],
                      // onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (c)=> NoticeViewr(e.data))),
                    ),
              ))
              .toList(),
        ]),
      ),
    );
  }
}

// class NoticeViewr extends StatelessWidget{
//   final String noticia;

//   const NoticeViewr(this.noticia, {Key? key, }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(child: Text(noticia),),
//     );
//   }
// }