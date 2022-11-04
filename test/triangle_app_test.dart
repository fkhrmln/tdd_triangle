import 'package:flutter_test/flutter_test.dart';
import 'triangle_app.dart';

void main() {
  group('detect the triangle', () {
    test('should throw an error when there is side less than 1', () {
      expect(() => detectTriangle(-1, 2, 3), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, -2, 3), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, 2, -3), throwsA(isA<Exception>()));
    });

    test('should return "segitiga sama sisi" when all sides are equal', () {
      expect(detectTriangle(1, 1, 1), 'segitiga sama sisi');
      expect(detectTriangle(2, 2, 1), isNot('segitiga sama sisi'));
    });

    test('should return "segitiga sama kaki" when two sides are equal', () {
      expect(detectTriangle(2, 2, 3), "segitiga sama kaki");
      expect(detectTriangle(4, 2, 4), "segitiga sama kaki");
      expect(detectTriangle(1, 2, 2), "segitiga sama kaki");
      expect(detectTriangle(4, 1, 4), "segitiga sama kaki");
    });

    test('should return "segitiga sembarang" when no sides are equal', () {
      expect(detectTriangle(2, 4, 3), 'segitiga sembarang');
    });

    test('should throw an error when side a + b <= c', () {
      expect(() => detectTriangle(4, 1, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(5, 1, 3), throwsA(isA<Exception>()));
    });
  });
}
