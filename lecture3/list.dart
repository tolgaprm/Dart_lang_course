void main() {
  List<int> money = [100, 110, 50, 500, 300, 200];

  print('musteri 1 parası ${money[0]}');

  money.add(180);
  money.insert(2, 140);
  money.insert(0, 3);
  print(money);

  // 100 tane musteri yap bunların hepsine sıra numarasına göre 5'er tl ekle
  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });

  print(customerMoney);

  // Customers 100 40 30 60
  // 35 tlden buyuk olanlara kredi verebiliriz yaz
  // az olanlara bye bye yaz

  List<int> customersMoney = [100, 40, 30, 60, -20];
  customerMoney.sort();
  for (var i = 0; i < customersMoney.length; i++) {
    print('Musteri parası: ${customersMoney[i]}');

    if (customersMoney[i] > 35) {
      print('kredi hazır');
    } else if (customersMoney[i] > 0) {
      print('Kredi veremeyiz ama bir bakalım');
    } else {
      print('bye bye');
    }
  }

  print('-------');
  List<dynamic> users = [1, 'asd', true];

  for (var item in users) {
    print(item);
  }

  List<String> names = ["Ahmet", "Ayşe", "Veli"];
  names.contains('Veli');
  

}
