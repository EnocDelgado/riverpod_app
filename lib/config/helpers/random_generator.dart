

import 'package:random_name_generator/random_name_generator.dart';

class RandomGenerator {

  static String getRandomName() {
    final randomNames = RandomNames( Zone.us );

    return randomNames.fullName();
  }

  static Stream<String> randomNamesStream() {

    return Stream.periodic(
      const Duration( seconds: 2 ),
      ( i ) {
        print('Strem new value');
        return getRandomName();
      }
    );
  }
}