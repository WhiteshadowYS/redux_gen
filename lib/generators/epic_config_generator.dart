import 'dart:async';
import 'dart:convert';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:redux_gen/modules/epic_config_module.dart';
import 'package:redux_gen_annotation/redux_gen_annotation.dart';
import 'package:source_gen/source_gen.dart';
import 'package:glob/glob.dart';

class EpicConfigGenerator extends GeneratorForAnnotation<InitEpics> {
  @override
  FutureOr<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    final initializerName = annotation.read('initializerName').stringValue;
    final asExtension = annotation.read('asExtension').boolValue;

    return EpicConfigModule(
      initializerName: initializerName,
      asExtension: asExtension,
    ).generate();
  }
}

// print('element.displayName: ${element?.displayName}');
// print('element.hasFactory: ${element?.hasFactory}');
// print('element.id: ${element?.id}');
// print('element.name: ${element?.name}');
// print('element.location: ${element?.location}');
// print('element.library: ${element?.library}');
// print('element.librarySource: ${element?.librarySource}');

// print('element.inputId: ${buildStep?.inputId}');
// print('element.inputLibrary: ${buildStep?.inputLibrary}');

// _buffer.write('const element_displayName = ${element?.displayName.toString()};\n');
// _buffer.write('const element_hasFactory = ${element?.hasFactory.toString()};\n');
// _buffer.write('const element_id = ${element?.id.toString()};\n');
// _buffer.write('const element_name = ${element?.name.toString()};\n');
// _buffer.write('const element_location = "${element?.location.toString()}";\n');
// _buffer.write('const element_library = "${element?.library.toString()}";\n');
// _buffer.write('const element_librarySource = "${element?.librarySource.toString()}";\n');
// _buffer.write('const element_inputId = "${buildStep?.inputId.toString()}";\n');
// final inputLib = await buildStep?.inputLibrary;
// _buffer.write('const element_inputLibrary = "${inputLib.toString()}";\n');
