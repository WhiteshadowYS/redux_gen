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

    _buffer += 'const String element_displayName = ${element?.displayName.toString()};\n';
    _buffer += 'const String element_hasFactory = ${element?.hasFactory.toString()};\n';
    _buffer += 'const String element_id = ${element?.id.toString()};\n';
    _buffer += 'const String element_name = ${element?.name.toString()};\n';
    _buffer += 'const String element_location = ${element?.location.toString()};\n';
    _buffer += 'const String element_library = ${element?.library.toString()};\n';
    _buffer += 'const String element_librarySource = ${element?.librarySource.toString()};\n';

    _buffer += 'const String element_inputId = ${buildStep?.inputId.toString()};\n';
    _buffer += 'const String element_inputLibrary = ${buildStep?.inputLibrary.toString()};\n';

    return _buffer.toString();
  }
}
