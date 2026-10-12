Future<int> getNumber(int value) async {
  if (value > 0) {
    await Future.delayed(Duration(milliseconds: 100));
    return value;
  } else {
    throw Exception('Արժեքը պետք է լինի դրական');
  }
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (e) {
    return 0; // Սխալի դեպքում վերադարձնում է 0
  }
}
