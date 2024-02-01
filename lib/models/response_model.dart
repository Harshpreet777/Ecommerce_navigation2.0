class DetailModel {
  String name;
  int price;
  String? image;
  DetailModel({
    required this.name,
    required this.price,
    this.image,
  });
}

List<DetailModel> details = [
  DetailModel(
      name: 'Nike Sports Wear Club',
      price: 99,
      image: "assets/images/firstguy.png"),
  DetailModel(
      name: 'Trail Running Jacket Nike',
      price: 99,
      image: "assets/images/secondguy.png"),
  DetailModel(
      name: 'Nike FootBall Wear',
      price: 110,
      image: "assets/images/thirdguy.png"),
  DetailModel(
      name: 'Puma Cold Weather jacket',
      price: 150,
      image: "assets/images/fourthguy.png")
];
