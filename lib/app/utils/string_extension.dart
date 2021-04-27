extension StringExtension on String {
  toPosition() {
    return this.replaceAll('[', '').replaceAll(']', '');
  }
}
