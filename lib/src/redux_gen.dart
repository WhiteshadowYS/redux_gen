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
    String _buffer = '';

    print('element.displayName: ${element?.displayName}');
    print('element.hasFactory: ${element?.hasFactory}');
    print('element.id: ${element?.id}');
    print('element.name: ${element?.name}');
    print('element.location: ${element?.location}');
    print('element.library: ${element?.library}');
    print('element.librarySource: ${element?.librarySource}');

    print('element.inputId: ${buildStep?.inputId}');
    print('element.inputLibrary: ${buildStep?.inputLibrary}');

    _buffer += 'element.displayName: ${element?.displayName}\n';
    _buffer += 'element.hasFactory: ${element?.hasFactory}\n';
    _buffer += 'element.id: ${element?.id}\n';
    _buffer += 'element.name: ${element?.name}\n';
    _buffer += 'element.location: ${element?.location}\n';
    _buffer += 'element.library: ${element?.library}\n';
    _buffer += 'element.librarySource: ${element?.librarySource}\n';

    _buffer += 'element.inputId: ${buildStep?.inputId}\n';
    _buffer += 'element.inputLibrary: ${buildStep?.inputLibrary}\n';

    return _buffer.toString();
  }
}
