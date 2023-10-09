import 'package:flutter/material.dart';

import 'package:pelisapp/provaider/movies_provider.dart';

import 'package:pelisapp/widget/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvaiders = Provider.of<MoviesProvaiders>(context);

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Center(
          child: AppBarCustom(),
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
