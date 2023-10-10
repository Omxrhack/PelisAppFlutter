import 'package:flutter/material.dart';
import 'package:pelisapp/models/movie.dart';

class CastingCards extends StatefulWidget {
  final Movie movie;
  const CastingCards({
    super.key,
    required this.movie,
  });

  @override
  State<CastingCards> createState() => _CastingCardsState();
}

class _CastingCardsState extends State<CastingCards> {
  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    return Column(
      children: [
        Text(
          'Fue lanzada en',
          style: Theme.of(context).brightness == Brightness.dark
              ? Theme.of(context).textTheme.titleLarge
              : Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          width: double.infinity,
          height: 180,
          child: ListView.builder(
            itemCount: 1,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, int index) => _CastCard(),
          ),
        ),
      ],
    );
  }
}

class _CastCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage(movie.fullPosterImg),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            movie.releaseDate.toString(),
            style: Theme.of(context).brightness == Brightness.dark
                ? Theme.of(context).textTheme.titleMedium
                : Theme.of(context).textTheme.titleMedium,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
