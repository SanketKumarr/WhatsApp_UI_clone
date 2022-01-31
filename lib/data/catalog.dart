
class Data {
  static List<Item> items = [
    // Item(
    //   name: "Sanket",
    //   image: '',
    //   message: 'The purpose of rejecting monkeys is secret. Nirvana is not the boundless anger of the master. Love emerges when you synthesise with issue.',
    //
    // )
  ];
}

class Item {

  final String name;
  final String image;
  final String message;

  Item({required this.name, required this.image, required this.message});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      name: map["name"],
      image: map["image"],
      message: map["message"],
    );
  }

  toMap() => {
    "name": name,
    "image": image,
    "message": message,
  };


}