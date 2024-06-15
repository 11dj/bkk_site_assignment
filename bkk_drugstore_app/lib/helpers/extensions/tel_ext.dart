extension CustomTel on String {
  String cleanedTel() {
    // var formatter = NumberFormat('#,###,000');

    return split(' ').first.replaceAll(RegExp(r'\D'), '');
  }
}
