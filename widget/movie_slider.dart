import 'package:flutter/material.dart';
import 'package:pelisapp/models/movie.dart';
import 'package:pelisapp/theme/theme.dart';

class MovieSliderWidget extends StatefulWidget {
  final List<Movie> movies;
  final String title;

  const MovieSliderWidget({
    Key? key,
    required this.movies,
    required this.title,
  }) : super(key: key);

  @override
  State<MovieSliderWidget> createState() => _MovieSliderWidgetState();
}

class _MovieSliderWidgetState extends State<MovieSliderWidget> {
  final ScrollController scrollCrontroller = new ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    scrollCrontroller.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      height: 300,
      child: Column(
        children: [
          if (this.widget.title != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.title,
                style: Theme.of(context).brightness == Brightness.dark
                    ? Theme.of(context).textTheme.titleLarge
                    : Theme.of(context).textTheme.titleLarge,
              ),
            ),
          const SizedBox(height: 40),
          Expanded(
            child: ListView.builder(
              controller: scrollCrontroller,
              scrollDirection: Axis.horizontal,
              itemCount: widget.movies.length,
              itemBuilder: (__, int index) => _MoviePost(widget.movies[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class _MoviePost extends StatelessWidget {
  final Movie movie;
  const _MoviePost(this.movie);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () =>
                Navigator.pushNamed(context, 'DetailScreen', arguments: movie),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: const AssetImage('assets/no-image.jpg'),
                image: NetworkImage(movie.fullPosterImg),
                fit: BoxFit.cover,
                width: 130,
                height: 190,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            movie.title,
            style: Theme.of(context).brightness == Brightness.dark
                ? Theme.of(context).textTheme.bodyLarge
                : Theme.of(context).textTheme.bodyLarge,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
