import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main() {
  

  final int customerMoney = 50;
  final String customerName = "veli";
  final int customerAge = 13;
  final String customerCity = 'Ardahan';

  // bu musterimin yaşı 10 büyükse bir işlem yapalim

  controlCustomerAge(customerMoney);

  // yeni musteri geliyor yine ayni alanlar

  final int customerMoney2 = 50;
  final String customerName2 = "veli";
  final int customerAge2 = 13;
  final String customerCity2 = 'asd';

  controlCustomerAge(customerMoney2);



  // ya ben musterileri gruplasam, yani bir kuemelesem ve bunlar ayni ozellikleri ayni sekilde bana gosteriblse

  int? newMoney;
  if (newMoney != null) {
    print(newMoney + 50);
  } else {
    print(10 + 10);
  }



  List<int?> customerMoneys = [100, null, 0];

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('beyfendi');
      } else {
        print('byy');
      }
    } else {
      print('haydi hesap açalım');
    }

  
    bool result = controlMoney(item) == null ? false : true;
    print(result);
  }

  print('----------------' * 10);

  int customerMoneyX = 15;
  User user1 = User('vb', 15, age: 21, city: 'aaa', id: '123');
  // User user2 = User('vb2', 15, null, null);

  final user3 = User('aa', 159, age: 13, id: '12');

  print(user3.userCode);

  print(user1.name);

  // musteri son gelen kisinin citysiniina gore kapmanya yapacak eger istanbul ise

  if (user3.city == null) {
    print('musteri sehir bilgisini vermemis');
  } else {
    if (user3.city!.isEmpty) {
      print('okok');
    }

    if (user3.city == 'istanbul') {
      print('tebirkler kazadniniz');
    }
  }

  // musteri id 12 olana indirim yap

  if (user3.isSpecialUser('12')) {
    user3.money += 5;
    print('Para eklendi');
  }

  //

  User2 newUser2 = User2('tp', 15);
  newUser2.money += 5;
  newUser2.money = null;

  print(newUser2.toString());
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  }

  // if (money == null || money == 0) {
  //   return null;
  // }
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print('alisveris yapabilirsiniz');
  } else {
    print('alisvers yapamaiyz');
  }
}
