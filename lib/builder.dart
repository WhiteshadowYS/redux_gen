import 'package:build/build.dart';
import 'package:redux_gen/src/redux_gen.dart';
import 'package:source_gen/source_gen.dart';

Builder reduxGenAnnotation(BuilderOptions options) {
  return SharedPartBuilder(
    [
      ReduxEpicGenerator(),
    ],
    'redux_gen_annotation',
  );
}
