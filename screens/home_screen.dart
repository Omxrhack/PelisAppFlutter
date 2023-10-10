import 'package:flutter/material.dart';

import 'package:pelisapp/provaider/movies_provider.dart';
import 'package:pelisapp/theme/themeActions.dart';

import 'package:pelisapp/widget/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final moviesProvaiders = Provider.of<MoviesProvaiders>(context);
    final theme = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Center(
          child: AppBarCustom(
            theme: theme,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(movies: moviesProvaiders.onDisplayMovies),
            const SizedBox(height: 40),
            MovieSliderWidget(
                movies: moviesProvaiders.popularMovies, title: 'Populares'),
          ],
        ),
      ),
    );
  }
}
