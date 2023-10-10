import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:pelisapp/models/movie.dart';

class CardWidget extends StatelessWidget {
  final List<Movie> movies;

  const CardWidget({
    Key? key,
    required this.movies,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (this.movies.length < 0) {
      return Container(
        width: double.infinity,
        height: size.height * 0.5,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      child: Swiper(
        itemCount: movies.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.9,
        itemBuilder: (__, int i) {
          final movie = movies[i];
          // ignore: avoid_print
          print(movie.fullPosterImg);
          return GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, 'DetailScreen', arguments: movie),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: const AssetImage('assets/no-image.jpg'),
                image: NetworkImage(
                  movie.fullPosterImg,
                ),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
