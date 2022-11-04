String detectTriangle(num sideA, num sideB, num sideC) {
  final sides = [sideA, sideB, sideC];
  sides.sort();

  sides.forEach((side) {
    if (side < 1) {
      throw Exception();
    }
  });

  if (sides[0] + sides[1] <= sides[2]) {
    throw Exception('this is inequal triangle');
  }

  if (sides[0] == sides[1] && sides[0] == sides[2]) {
    return 'segitiga sama sisi';
  }

  if (sides[0] == sides[1] || sides[1] == sides[2]) {
    return 'segitiga sama kaki';
  }

  return 'segitiga sembarang';
}
