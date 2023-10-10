import 'package:flutter/material.dart';
import 'package:pelisapp/models/movie.dart';

import 'package:pelisapp/widget/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppbar(),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                _PostedAndTitle(),
                const SizedBox(height: 20),
                _OverViev(),
                const SizedBox(height: 20),
                CastingCards(
                  movie: movie,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    return SliverAppBar(
      expandedHeight: 300,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black45,
          child: Text(
            movie.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.w800),
          ),
        ),
        background: FadeInImage(
          image: NetworkImage(movie.fullBackdropPath),
          placeholder: AssetImage('assets/loading.gif'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PostedAndTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: FadeInImage(
              placeholder: const AssetImage('assets/no-image.jpg'),
              image: NetworkImage(movie.fullPosterImg),
              height: 150,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 150),
                child: Text(
                  movie.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).brightness == Brightness.dark
                      ? Theme.of(context).textTheme.titleLarge
                      : Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 10),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 150),
                child: Text(
                  movie.originalTitle,
                  style: Theme.of(context).brightness == Brightness.dark
                      ? Theme.of(context).textTheme.titleSmall
                      : Theme.of(context).textTheme.titleSmall,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.star_border_outlined,
                      size: 15, color: Colors.amber),
                  const SizedBox(width: 5),
                  Text(
                    'Point',
                    style: Theme.of(context).brightness == Brightness.dark
                        ? Theme.of(context).textTheme.titleSmall
                        : Theme.of(context).textTheme.titleSmall,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _OverViev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        movie.overview,
        textAlign: TextAlign.justify,
        style: Theme.of(context).brightness == Brightness.dark
            ? Theme.of(context).textTheme.titleMedium
            : Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
