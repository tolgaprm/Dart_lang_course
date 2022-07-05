void main() {
  controlUserMoney(200, 100);
  controlUserMoney(0, 5);

  int result = convertToDolar(500, 17);
  print(result);

  print(convertToStandartDolar(200));
  print(convertToStandartDolar(200, dolar: 16));

  int result2 = convertToEuro(userMoney: 700, euro: 18);
}

void controlUserMoney(int money, int minValue) {
  if (money > minValue) {
    print('para var');
  } else {
    print('para yok');
  }
}

int convertToDolar(int userMoney, int dolar) {
  return userMoney ~/ dolar;
}

int convertToStandartDolar(int userMoney, {int dolar = 13}) {
  return userMoney ~/ dolar;
}

int convertToEuro({required int userMoney, int euro = 16}) {
  return userMoney ~/ euro;
}

