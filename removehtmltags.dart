void main() {
  String value = "<h1>My name is Anthony <b>Gonsalves</B></h1>";
  String output = removeAllHtmlTags(value);
  print(output);
}

String removeAllHtmlTags(String htmlText) {
  RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

  return htmlText.replaceAll(exp, '');
}
