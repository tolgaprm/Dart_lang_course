void main(List<String> args) {
  final customerMouse = Mouses.Razer;
  print(customerMouse.index);

  print(customerMouse.name);

  if (customerMouse == Mouses.Razer) {}

  if (customerMouse.name == 'Razer') {}

  if (customerMouse.isCheckName('Razer')) {
    print('aa');
  }
}

enum Mouses { Magic, Apple, Logitech, Razer }

extension MousesSelectedExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
  }
}
