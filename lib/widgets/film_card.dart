import 'package:flutter/material.dart';

class FilmCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String auteur;
  final int date;
  final Color couleur;
  const FilmCard({
    super.key,
    required this.icon,
    required this.title,
    required this.auteur,
    required this.date,
    required this.couleur
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(
        leading: Icon(icon,size: 20,color: couleur,),
        title: Text(title),
        subtitle: Text("$date . $auteur"),
      ),
    );
  }
}
