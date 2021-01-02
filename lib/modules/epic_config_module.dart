import 'dart:async';

final Set<String> registeredVarNames = {};

class EpicConfigModule {
  final StringBuffer _buffer = StringBuffer();

  final String initializerName;
  final bool asExtension;

  EpicConfigModule({
    this.initializerName,
    this.asExtension,
  });

  void _write(Object o) => _buffer.write(o);

  void _writeln(Object o) => _buffer.writeln(o);

  FutureOr<String> generate() async {
    _writeln('// First line');
    registeredVarNames.clear();

    return _buffer.toString();
  }
}
