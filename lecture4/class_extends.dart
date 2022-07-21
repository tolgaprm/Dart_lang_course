void main() {
  final userNormal = User('tp', 15);
  final usersBank = BankUser('Ahmet', 155, 123);
  final usrSpecial = SpecialUser('Mehmet', 12312, 123123, 30);

  userNormal.sayMoneyWithCompanyName();
  usersBank.sayMoneyWithCompanyName();
  usrSpecial.sayMoneyWithCompanyName();

  print(usrSpecial.calculateMoney);
  print(usrSpecial.money);
}


abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('Ahmet- $money paraniz vardir');
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) : super(name, money);
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name, money);

  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends IUser {
  final String name;
  final int money;
  final int bankingCode;
  late final int _disccount;

  SpecialUser(this.name, this.money, this.bankingCode, int disccount) : super(name, money) {
    _disccount = disccount;
  
  




  }
  
  int get calculateMoney => money - (money ~/ _disccount);
}
