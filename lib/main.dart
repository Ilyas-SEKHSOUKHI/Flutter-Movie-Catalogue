import 'package:flutter/material.dart';
import 'package:tp2projetclasse/widgets/film_card.dart';

final List<Map<String, dynamic>> films = [
  {'titre': 'Inception', 'annee': 2010, 'realisateur': 'Christopher Nolan', 'duree': 148,
    'genre': 'Science-fiction', 'icone': Icons.rocket_launch, 'couleur': Colors.indigo, 'favori': false},
  {'titre': 'Interstellar', 'annee': 2014, 'realisateur': 'Christopher Nolan', 'duree': 169,
    'genre': 'Science-fiction', 'icone': Icons.rocket_launch, 'couleur': Colors.indigo, 'favori': false},
  {'titre': 'Intouchables', 'annee': 2011, 'realisateur': 'O. Nakache & É. Toledano', 'duree': 112,
    'genre': 'Comédie', 'icone': Icons.sentiment_very_satisfied, 'couleur': Colors.orange, 'favori': false},
  {'titre': 'Le Fabuleux Destin d\'Amélie Poulain', 'annee': 2001, 'realisateur': 'Jean-Pierre Jeunet', 'duree': 122,
    'genre': 'Comédie', 'icone': Icons.sentiment_very_satisfied, 'couleur': Colors.orange, 'favori': false},
  {'titre': 'Titanic', 'annee': 1997, 'realisateur': 'James Cameron', 'duree': 194,
    'genre': 'Drame', 'icone': Icons.theater_comedy, 'couleur': Colors.blueGrey, 'favori': false},
  {'titre': 'Casablanca', 'annee': 1942, 'realisateur': 'Michael Curtiz', 'duree': 102,
    'genre': 'Romance', 'icone': Icons.favorite, 'couleur': Colors.purple, 'favori': false},
  {'titre': 'Le Roi Lion', 'annee': 1994, 'realisateur': 'R. Allers & R. Minkoff', 'duree': 88,
    'genre': 'Animation', 'icone': Icons.animation, 'couleur': Colors.pink, 'favori': false},
  {'titre': 'Coco', 'annee': 2017, 'realisateur': 'Lee Unkrich', 'duree': 105,
    'genre': 'Animation', 'icone': Icons.animation, 'couleur': Colors.pink, 'favori': false},
  {'titre': 'Gladiator', 'annee': 2000, 'realisateur': 'Ridley Scott', 'duree': 155,
    'genre': 'Action', 'icone': Icons.local_fire_department, 'couleur': Colors.red, 'favori': false},
  {'titre': 'Le Seigneur des anneaux : la Communauté de l\'anneau', 'annee': 2001, 'realisateur': 'Peter Jackson', 'duree': 178,
    'genre': 'Fantasy', 'icone': Icons.auto_awesome, 'couleur': Colors.teal, 'favori': false},
  {'titre': 'Parasite', 'annee': 2019, 'realisateur': 'Bong Joon-ho', 'duree': 132,
    'genre': 'Thriller', 'icone': Icons.visibility, 'couleur': Colors.black87, 'favori': false},
  {'titre': 'Jurassic Park', 'annee': 1993, 'realisateur': 'Steven Spielberg', 'duree': 127,
    'genre': 'Aventure', 'icone': Icons.explore, 'couleur': Colors.green, 'favori': false},
];

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Film"),
          backgroundColor: Colors.pink,
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              for(int i=0;i<films.length;i++)
                FilmCard(
                    icon: films[i]["icone"],
                    title: films[i]["titre"],
                    auteur: films[i]["realisateur"],
                    date: films[i]["annee"],
                    couleur: films[i]["couleur"])

            ],
          ),
        ),
      ),
    );
  }
}
