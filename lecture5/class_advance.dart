void main() {
  final user = _User("Tolga", age: 21);

  //if ((user.age ?? 0) >18) {}

  if (user.age is int) {
    if (user.age! <= 18) {
      print('Kucuk');
      user.updateMoneyWithString('TR');
    } else {
      user.updateMoneyWithNumber(150);
    }
  }

  final _newType =
      user.moneyType is String ? user.moneyType as String : "Numara";
  print(_newType);

  // kullanıcıların parası var ama paranın tipi değişken olablir
  // parası olan'ın o parametresi bir isimde olabilir, değer de olablilr
  // bu durumda dynamic kullanıırız
  // Dynamic fazla kullanmamaız lazım

  Bank moneyBank = Bank(50, "12");
  Bank moneyBank1 = Bank(50, "12");

  if (moneyBank == moneyBank1) {
    print("ok");
  } else {
    print("false");
  }

  // Banka sınıfından iki kişimimn parasını toplamak
  int result = moneyBank + moneyBank1;

  // Benim bankama gelen müsterilerin id'si aynı olanlar aynı musteri olamlıdır
  print(moneyBank == moneyBank);

  moneyBank1
    ..money += 10
    ..id = "22";
}

class _User {
  final String name;

  int? age;
  dynamic moneyType;

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }

  _User(this.name, {this.age});
}

class Bank with BankMixin {
  int money;
  String id;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return this.money + newBank.money;
  }

  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }

  @override
  void sayBankHello() {
    print("Hello");
  }
}

//İşlerini yapıp geri döndürler
// Constructor'sız classlar olarka düşünebilirz
mixin BankMixin {
  void sayBankHello();
  void calculateMoney(int money) {
    print('money');
  }
}
