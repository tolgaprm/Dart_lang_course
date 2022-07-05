void main() {
  Map<String, int> users = {'Ahmet': 20, 'Mehmet': 30};

  print('Ahmetin parası ${users["Ahmet"]}');

  for (var item in users.keys) {
    print('${item} - ${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  Map<String, List<int>> vbBank = {
    'Ahmet': [200, 40, 10]
  };
  vbBank["Mehmet"] = [30, 40];
  
}
