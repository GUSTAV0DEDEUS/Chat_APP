import 'dart:math';

import 'package:my_app/models/person.dart';

List<Person> persons = [
  Person(
      id: Random().nextInt(400),
      name: "John Doe",
      image: 'assets/images/1.jpg',
      state: true,
      lastMessage: "Hey, what's up?",
      lastVisited: DateTime.now(),
      checked: false,
      images: [
        "https://source.unsplash.com/random/?face",
        "https://source.unsplash.com/random/?face",
        "https://source.unsplash.com/random/?face"
      ]),
  Person(
      id: Random().nextInt(400),
      name: "Jane Doe",
      image: 'assets/images/2.jpg',
      state: false,
      lastMessage: "I'm just chilling.",
      lastVisited: DateTime.now().subtract(const Duration(hours: 1)),
      checked: true,
      images: [
        "https://source.unsplash.com/random/?face",
        "https://source.unsplash.com/random/?face",
        "https://source.unsplash.com/random/?face"
      ]),
  Person(
      id: Random().nextInt(400),
      name: "Peter Parker",
      image: 'assets/images/3.jpg',
      state: true,
      lastMessage: "I'm fighting crime.",
      lastVisited: DateTime.now().subtract(const Duration(hours: 2)),
      checked: false,
      images: [
        "https://source.unsplash.com/random/?face",
        "https://source.unsplash.com/random/?face",
        "https://source.unsplash.com/random/?face"
      ]),
  Person(
      id: Random().nextInt(400),
      name: "Spider-Man",
      image: 'assets/images/4.jpg',
      state: false,
      lastMessage: "Just swinging around.",
      lastVisited: DateTime.now().subtract(const Duration(hours: 3)),
      checked: true,
      images: []),
  Person(
      id: Random().nextInt(400),
      name: "Mary Jane Watson",
      image: 'assets/images/5.jpg',
      state: true,
      lastMessage: "I'm at work.",
      lastVisited: DateTime.now().subtract(const Duration(hours: 4)),
      checked: false,
      images: []),
  Person(
      id: Random().nextInt(400),
      name: "Gwen Stacy",
      image: 'assets/images/6.jpg',
      state: true,
      lastMessage: "I'm studying.",
      lastVisited: DateTime.now().subtract(const Duration(hours: 6)),
      checked: false,
      images: [
        "https://source.unsplash.com/random/?face",
        "https://source.unsplash.com/random/?face",
        "https://source.unsplash.com/random/?face"
      ]),
  Person(
      id: Random().nextInt(400),
      name: "Eddie Brock",
      image: 'assets/images/7.jpg',
      state: false,
      lastMessage: "I'm angry.",
      lastVisited: DateTime.now().subtract(const Duration(hours: 7)),
      checked: true,
      images: []),
  Person(
      id: Random().nextInt(400),
      name: "Venom",
      image: 'assets/images/8.jpg',
      state: true,
      lastMessage: "I'm hungry.",
      lastVisited: DateTime.now().subtract(const Duration(hours: 8)),
      checked: false,
      images: []),
  Person(
      id: Random().nextInt(400),
      name: "Miles Morales",
      image: 'assets/images/9.jpg',
      state: false,
      lastMessage: "I'm just vibing.",
      lastVisited: DateTime.now().subtract(const Duration(hours: 9)),
      checked: true,
      images: []),
  Person(
      id: Random().nextInt(400),
      name: "Peter B. Parker",
      image: 'assets/images/10.jpg',
      state: true,
      lastMessage: "I'm from another dimension.",
      lastVisited: DateTime.now().subtract(const Duration(hours: 10)),
      checked: false,
      images: [
        "https://source.unsplash.com/random/?face",
        "https://source.unsplash.com/random/?face",
        "https://source.unsplash.com/random/?face"
      ]),
  Person(
      id: Random().nextInt(400),
      name: "Ms. Marvel",
      image: 'assets/images/11.jpg',
      state: true,
      lastMessage: "I'm a superhero too!",
      lastVisited: DateTime.now().subtract(const Duration(hours: 11)),
      checked: false,
      images: []),
  Person(
      id: Random().nextInt(400),
      name: "Kamala Khan",
      image: 'assets/images/12.jpg',
      state: false,
      lastMessage: "I'm just a kid.",
      lastVisited: DateTime.now().subtract(const Duration(hours: 12)),
      checked: true,
      images: [
        "https://source.unsplash.com/random/?face",
        "https://source.unsplash.com/random/?face",
        "https://source.unsplash.com/random/?face"
      ]),
  Person(
      id: Random().nextInt(400),
      name: "Carol Danvers",
      image: 'assets/images/13.jpg',
      state: true,
      lastMessage: "I'm Captain Marvel!",
      lastVisited: DateTime.now().subtract(const Duration(hours: 13)),
      checked: false,
      images: []),
  Person(
      id: Random().nextInt(400),
      name: "Nick Fury",
      image: 'assets/images/14.jpg',
      state: false,
      lastMessage: "I'm the director of S.H.I.E.L.D.",
      lastVisited: DateTime.now().subtract(const Duration(hours: 14)),
      checked: true,
      images: []),
];
