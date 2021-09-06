void main() async {
  await for (dynamic i in counter()) {
    print(i); 
  }
}

Stream<dynamic> counter() async* {
  for (int seconds = 1; seconds <= 60; seconds++) {
    await Future.delayed(const Duration(seconds: 1));
    yield seconds;
  }
  yield "Done";
}

     



