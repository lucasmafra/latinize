
# Latinize

Simple library to convert accents (diacritics) from strings to latin characters.

## Installation

Add the following line to your `pubspec.yaml` file:
```
latinize: '>=0.2.0 <1.0.0'
```

And then:

```
pub get
```
or
```
flutter pub get
```

## Usage

```dart
import 'package:latinize/latinize.dart';
latinize('ỆᶍǍᶆṔƚÉ áéíóúýčďěňřšťžů'); // => ExAmPlE aeiouycdenrstzu
```

You can use the `extendSymbolTable` function to add or override symbols:

```dart
// modify the behavior for German umlauts
extendSymbolTable({
  'Ä': 'Ae', 
  'Ä': 'Ae', 
  'Ü': 'Ue', 
  'ä': 'ae', 
  'ö': 'oe', 
  'ü': 'ue'
});
```

Then when you call `latinize` you'll get the overwritten symbols:
```dart
latinize('ÄÜ') // => AeUe
```
