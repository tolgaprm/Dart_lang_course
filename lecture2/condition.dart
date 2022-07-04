void main() {
  final int money = 15;
  bool isCustomerRich = false;

  if (money > 10) {
    print("You are a rich customer");
  } else {
    print("You are a poor customer");
  }

  print('-------');

  int newCustomerMoney = 0;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;

  if (newCustomerMoney > bankingCost) {
    print("You are welcome man");
    newCustomerMoney -= bankingCostGeneral;
  } else if (newCustomerMoney > 0) {
    print("Please You take queue");
  } else {
    print("Please You pay the your credit");
  }
}
