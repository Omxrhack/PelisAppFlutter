import 'package:flutter/material.dart';
import 'package:pelisapp/theme/theme.dart';
import 'package:pelisapp/widget/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-Movie';
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
                _OverViev(),
                _OverViev(),
                const SizedBox(height: 20),
                CastingCards(),
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
          child: const Text(
            'Movie Tittle',
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.w800),
          ),
        ),
        background: const FadeInImage(
          image: NetworkImage('https://via.placeholder.com/500x300'),
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
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150,
            ),
          ),
          const SizedBox(width: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Text(
                'Title original main',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(Icons.star_border_outlined,
                      size: 15, color: Colors.amber),
                  SizedBox(width: 5),
                  Text('Point')
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: const Text(
          'Et ad officia velit excepteur elit ut sunt sint in in amet sint magna irure. Non dolore anim cillum adipisicing consequat eiusmod adipisicing deserunt. Nostrud id elit sunt nisi. Est et nulla fugiat in cillum cillum id ad enim fugiat ipsum laboris pariatur cupidatat. Mollit nostrud sit sunt duis consequat dolor velit esse do eu culpa mollit.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20,
            color: TemaApp.colorTextoContrario,
          )),
    );
  }
}
