import 'package:flutter/material.dart';

class SearchScreenClass extends StatefulWidget {
  const SearchScreenClass({super.key});

  @override
  State<SearchScreenClass> createState() => _SearchScreenClassState();
}

class _SearchScreenClassState extends State<SearchScreenClass> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Search Page",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
