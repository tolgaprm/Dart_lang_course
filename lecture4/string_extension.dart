void main(List<String> args) {}

extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() == "admin";
  }
}
