class Memory {
  static const operations = const ['%', '/', 'x', '-', '+', '='];

  int _bufferIndex = 0;
  final _buffer = [0.0, 0.0];
  String operation;
  String _value = '0';

  bool _wipeValue = false;

  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else if (operations.contains(command)) {
      _setOperation(command);
    } else {
      _addDigit(command);
    }
  }

  _setOperation(String newOperation) {
    _wipeValue = true;
  }

  _addDigit(String digit) {
    final currentValue = _wipeValue ? '' : _value;
    _value += currentValue + digit;
    _wipeValue = false;
  }

  void _allClear() {
    _value = '0';
  }

  String get value {
    return _value;
  }
}
