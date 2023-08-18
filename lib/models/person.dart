class Person {
  final int id;
  final String name;
  final String image;
  final bool state;
  final String lastMessage;
  final DateTime lastVisited;
  final dynamic checked;
  final List<String>? images;
  const Person({
    required this.id,
    required this.name,
    required this.image,
    required this.state,
    required this.lastMessage,
    required this.lastVisited,
    required this.checked,
    required this.images
  });
}
