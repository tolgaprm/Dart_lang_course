void main() {
  String name = "Tolga";

  if (name == "Tolga") {}
  if (name != 'Veli') {}
  if (name.length > 'veli'.length) {}
  if (name.length > 'veli'.length) {}
  if (name.length >= 'veli'.length) {}
  if (name.length <= 'veli'.length) {}

  const int appleMoney = 20;
  const double disccount = 2;

  int myMoney = 30;

  myMoney = myMoney - (appleMoney ~/ disccount);
  print(myMoney);

  print(myMoney % 2 == 0);
  print(myMoney.isEven);
  print(myMoney.isOdd);
}
