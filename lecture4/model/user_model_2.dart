import 'dart:ffi';

class User2 {
  final String name;
  int _money;
  final int? age;
  final String? city;

  int get money => _money;

  set money(int? money) {
    /* if (money == null) {
      _money = 0;
    } else {
      _money = money;
    }*/

    _money = money == null ? 0 : money;
  }

  late final String userCode;

  User2(this.name, this._money, {this.age, this.city}) {
    userCode = (city ?? 'kys') + name;
  }
}

extension User2ControlExtension on User2 {
  void controlName() {
    print(name);
  }
}
