import 'package:test/test.dart';
import 'package:latinize/latinize.dart';

void main() {
  group('latinize', () {
    test('no diacritics results in same string', () {
      expect(latinize('banana'), 'banana');
    });

    test('when diacritics replaces according to symbol table', () {
      expect(latinize('\'ỆᶍǍᶆṔƚÉ áéíóúýčďěňřšťž'), '\'ExAmPlE aeiouycdenrstz');
    });
  });

  group('extendSymbolTable', () {
    test('add or override symbol table', () {
      extendSymbolTable(<String, String>{
        'Ä': 'Ae',
        'Ü': 'Ue',
      });
      expect(latinize('ÄÜ'), 'AeUe');
    });
  });
}
