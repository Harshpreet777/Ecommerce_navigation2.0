class DetailModel {
  String name;
  int price;
  DetailModel({
    required this.name,
    required this.price,
  });
}

List<DetailModel> details = [
  DetailModel(name: 'Nike Sports Wear Club', price: 99),
  DetailModel(name: 'Trail Running Jacket Nike', price: 99),
  DetailModel(name: 'Nike FootBall Wear', price: 110),
  DetailModel(name: 'Puma Cold Weather jacket', price: 150)
];
