import 'package:flutter/material.dart';

import 'package:pelisapp/widget/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Center(
          child: AppBarCustom(),
        ),
      ),
      body: Center(
        child: Text('Movies App'),
      ),
    );
  }
}
