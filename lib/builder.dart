import 'package:build/build.dart';
import 'package:redux_gen/generators/epic_config_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder epicConfigGeneration(BuilderOptions options) {
  return LibraryBuilder(
    EpicConfigGenerator(),
    generatedExtension: '.epic_config.dart',
  );
}

// Builder reduxGenAnnotation(BuilderOptions options) {
//   return SharedPartBuilder(
//     [
//       ReduxEpicGenerator(),
//     ],
//     'redux_gen_annotation',
//   );
// }
