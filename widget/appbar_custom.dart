import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false, // hides leading widget
      toolbarHeight: 100,
      title: const Row(
        children: [
          Text(
            'MoviesApp',
          ),
          Text(
            '.',
            style: TextStyle(color: Colors.red),
            textScaleFactor: 2,
          ),
        ],
      ),
      actions: const [
        IconsState(),
      ],
    );
  }
}

class IconsState extends StatefulWidget {
  const IconsState({
    super.key,
  });

  @override
  State<IconsState> createState() => _IconsStateState();
}

class _IconsStateState extends State<IconsState> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {
            //Cambiartema();
            const Icon(Icons.dangerous);
            setState(() {});
          },
          icon: const Icon(Icons.nightlight_sharp),
        ),
      ],
    );
  }
}

// class Cambiartema {
//   void Cambiartema() {
//     if (TemaApp.darkTheme == ThemeData.dark()) {
//         TemaApp.darkTheme == ThemeData.light();
//       } else {
//         TemaApp.darkTheme == ThemeData.dark();
//       }  
     
//   } 
    
  
// }
