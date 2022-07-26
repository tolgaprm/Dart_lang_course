void main() {
  final carModel = CarModel(
      category: CarModels.mercedes,
      name: "e250",
      money: 150000,
      isSecondHand: false);

  final carItems = [
    CarModel(
        category: CarModels.mercedes,
        name: "e250",
        money: 10,
        isSecondHand: false),
    CarModel(category: CarModels.bmw, name: "bmw X5", money: 20),
    CarModel(
        category: CarModels.toyota, name: "fa", money: 30, isSecondHand: false),
    CarModel(category: CarModels.mercedes, name: "c 120", money: 40),
    CarModel(
        category: CarModels.bmw, name: "i8", money: 50, isSecondHand: false),
  ];

  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;

  print(resultCount);

  final newCar =
      CarModel(category: CarModels.mercedes, name: "c 120", money: 40);

  final isHaveCar = carItems.contains(newCar);

  if (isHaveCar) {
    print("Elimizde Var");
  } else {
    print("Yok yeni bir tane alalım");
  }

  // Mercedes araba olup parası 20 den fazla olan
  final resultMercedesMore20 = carItems.where((element) {
    return element.category == CarModels.mercedes && element.money > 20;
  }).join();

  print(resultMercedesMore20);

  final carNames = carItems.map((e) => e.name).join(", ");
  print(carNames);

  try {
    final porscheCar = carItems
        .singleWhere((element) => element.category == CarModels.porsche);
    print(porscheCar.name);
  } catch (e) {
    print('Araba Yok');
  } finally {
    print("Finally");
  }

  final index = carItems.indexOf(newCar);
  print(index);

  carItems.sort((first, second) => second.money.compareTo(first.money));


  // Bmw yada parası 30'un altında olanları sil
  carItems.removeWhere(
      (element) => element.category == CarModels.bmw || element.money < 30);
}

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;

  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { mercedes, bmw, toyota, porsche }
