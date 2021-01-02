import 'dart:async';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:redux_gen_annotation/redux_gen_annotation.dart';
import 'package:source_gen/source_gen.dart';

class ReduxEpicGenerator extends GeneratorForAnnotation<Epic> {
  @override
  FutureOr<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    return "// Hey! Annotation found!";
  }
}
