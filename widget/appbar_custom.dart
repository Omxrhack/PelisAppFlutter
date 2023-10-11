import 'package:flutter/material.dart';
import 'package:pelisapp/search/serach_delagate.dart';
import 'package:pelisapp/theme/theme.dart';
import 'package:pelisapp/theme/themeActions.dart';
import 'package:provider/provider.dart';

class AppBarCustom extends StatefulWidget {
  final ThemeChanger theme;

  const AppBarCustom({
    required this.theme,
    super.key,
  });

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
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
      actions: [
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
    final theme = Provider.of<ThemeChanger>(context);
    return Row(
      children: [
        IconButton(
          onPressed: () {
            showSearch(context: context, delegate: MovieSearchDelagate());
          },
          icon: theme.getTheme() == TemaApp.darkTheme
              ? const Icon(Icons.search)
              : const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
        ),
        IconButton(
          onPressed: () {
            //Cambiartema();

            theme.getTheme() == TemaApp.darkTheme
                ? theme.setTheme(TemaApp.ligthTheme)
                : theme.setTheme(TemaApp.darkTheme);
          },
          icon: theme.getTheme() == TemaApp.darkTheme
              ? const Icon(Icons.brightness_4)
              : const Icon(
                  Icons.brightness_7,
                  color: Colors.black,
                ),
        ),
      ],
    );
  }
}
