Future<int> delayedValue(int value) async {
  await Future.delayed(Duration(milliseconds: 100));
  return value;
}

Future<int> sumValues(int a, int b) async {
  // Գործողությունները կատարվում են զուգահեռ Future.wait-ի միջոցով
  List<int> results = await Future.wait([
    delayedValue(a),
    delayedValue(b),
  ]);
  return results[0] + results[1];
}
