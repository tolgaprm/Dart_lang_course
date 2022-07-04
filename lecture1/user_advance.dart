void main(List<String> args) {
  String userName = "userName";

  var userName2 = "userName2";

  // Değeri bir daha değiştirilemez.
  final int bankMoney = 2000;
  const String bankName = "Zt Bank";

  print("-------");
  // Ornek

  const String bankNameSpecial = "TP Bank";
  const user1 = "Bank 1 müşteri";
  const double user1Money = 100.000;

  const String user2 = "Bank 2 Müşteri";
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print("User 2 money: $user2Money");
}
