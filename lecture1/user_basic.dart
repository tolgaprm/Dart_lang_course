void main(List<String> args) {
  int userMoney = 25;
  String userName = "Tolga";

  userMoney = userMoney + 5;
  // userMoney += 5;
  print("Merhaba $userName $userMoney");

  print('--------');

  userMoney = userMoney - 10;

  // Bu işareti kullanınca tam sayı kısmını sonuca eşitler.
  //userMoney = userMoney ~/ 2;
  print("Paranız değer kaybetti $userMoney");

  double ahmetMoney = 15.3;
  ahmetMoney = ahmetMoney / 2;
  print("Ahmet Bey paranız uçtu. $ahmetMoney");
  print("Tolga Bey paranız uçtu. $userMoney");
}
