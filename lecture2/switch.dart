void main() {
  final int classDegree = 2;

  bool isSucces = false;

  switch (classDegree) {
    case 2:
      print("Bravo");
      isSucces = true;
      break;
    case 1:
      print('Olur');
      isSucces = true;
      break;
    case 0:
      print('Yeterli');
      isSucces = true;
      break;
    default:
      print('Basarısız');
      isSucces = false;
  }

  print('Beyfendi cocugunuz sonucu $isSucces');
}
