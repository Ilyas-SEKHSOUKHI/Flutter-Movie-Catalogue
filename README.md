# TP2 - Application Mobile : Catalogue de Films 🎬

Application mobile développée avec **Flutter** dans le cadre du TP2 de Développement Mobile. Cette application présente une liste de films emblématiques sous forme de cartes interactives et stylisées.

---

## 📱 Aperçu de l'application

Voici une capture d'écran de l'application en cours d'exécution :

<p align="center">
  <img src="image/Screenshot%202026-11-24%20164642.png" alt="Capture d'écran de l'application" width="320" />
</p>

---

## ✨ Fonctionnalités

- **Affichage en liste (ListView) :** Défilement fluide à travers une collection de films classiques et contemporains.
- **Composant réutilisable (`FilmCard`) :** Chaque film est affiché sous forme d'une carte (`Card`) avec ombre portée (`elevation`), icône personnalisée, titre, année de sortie et réalisateur.
- **Thématisation par genre :** Association d'icônes et de couleurs adaptées pour chaque catégorie de film (Science-fiction, Animation, Romance, Comédie, Action, Thriller, etc.).
- **Interface épurée (Material Design) :** Barre d'application (`AppBar`) rose et design soigné.

---

## 📂 Structure du Projet

```text
tp2projetclasse/
├── android/                 # Configuration native Android
├── ios/                     # Configuration native iOS
├── image/                   # Captures d'écran et médias
│   └── Screenshot 2026-11-24 164642.png
├── lib/
│   ├── widgets/
│   │   └── film_card.dart   # Widget personnalisé représentant une carte de film
│   └── main.dart            # Point d'entrée de l'application et données de films
├── test/                    # Tests unitaires et de widgets
├── pubspec.yaml             # Dépendances et configuration Flutter
└── README.md                # Documentation du projet
```

---

## 🛠️ Technologies & Outils

- **Langage :** [Dart](https://dart.dev/)
- **Framework :** [Flutter](https://flutter.dev/) (SDK ^3.13.4)
- **UI Toolkit :** Material Design (`MaterialApp`, `Scaffold`, `ListView`, `Card`, `ListTile`)

---

## 🚀 Installation et Lancement

### Prérequis

- [Flutter SDK](https://docs.flutter.dev/get-started/install) installé et configuré.
- Un émulateur (Android / iOS) ou un appareil physique connecté en mode débogage.

### Étapes d'installation

1. **Cloner ou ouvrir le projet :**
   ```bash
   cd tp2projetclasse
   ```

2. **Récupérer les dépendances :**
   ```bash
   flutter pub get
   ```

3. **Lancer l'application :**
   ```bash
   flutter run
   ```

---

## 📊 Modèle de Données

Les films sont définis sous forme de liste de dictionnaires dans `lib/main.dart` avec la structure suivante :

```dart
{
  'titre': 'Inception',
  'annee': 2010,
  'realisateur': 'Christopher Nolan',
  'duree': 148,
  'genre': 'Science-fiction',
  'icone': Icons.rocket_launch,
  'couleur': Colors.indigo,
  'favori': false
}
```
