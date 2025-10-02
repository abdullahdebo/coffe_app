class DrinkModel {
  final String image;
  final String name;
  final String title;
  final String price;

  DrinkModel({
    required this.image,
    required this.name,
    required this.title,
    required this.price,
  });

  static List<DrinkModel> drinks = [
    DrinkModel(
      image: 'assets/drinks/Chocolate.png',
      name: 'Chocolate',
      title: '20 flavors of cups',
      price: '20',
    ),
    DrinkModel(
      image: 'assets/drinks/Salted Caramel.png',
      name: 'Salted Caramel',
      title: '20 flavors of cups',
      price: '30',
    ),
    DrinkModel(
      image: 'assets/drinks/Strawberry.png',
      name: 'Strawberry',
      title: '20 flavors of cups',
      price: '40',
    ),
    DrinkModel(
      image: 'assets/drinks/Brownie Island.png',
      name: 'Brownie Island.',
      title: '20 flavors of cups',
      price: '50',
    ),
    DrinkModel(
      image: 'assets/drinks/Banana.png',
      name: 'Banana',
      title: '20 flavors of cups',
      price: '60',
    ),
    DrinkModel(
      image: 'assets/drinks/Chocolate.png',
      name: 'Chocolate',
      title: '20 flavors of cups',
      price: '20',
    ),
    DrinkModel(
      image: 'assets/drinks/Salted Caramel.png',
      name: 'Salted Caramel',
      title: '20 flavors of cups',
      price: '30',
    ),
  ];
}
