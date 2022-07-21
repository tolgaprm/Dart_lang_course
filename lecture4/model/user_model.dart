// Adı,parası Zorunlu
// yas ve city vermek zorunda değil
// city girilmemişse kys olarak kabul et
// id değişkenine sadece bu sınıf içerisinden erişilebilsin
class User {
  // Özellikleri neler
  late final String name;
  late int money;
  late final int? age;
  late final String? city;

  late final String userCode;

  late final String _id; // file private yapmak için '_' kullanılır. 
  
  User(String name, int money, {required String id, int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    userCode = (city ?? 'kys') + name;
  }

  bool isSpecialUser(String id) {
    return _id == id;
  }

  // bool isEmptyId() {
  //   return _id.isEmpty;
  // }

  bool get isEmptyId => _id.isEmpty;
}