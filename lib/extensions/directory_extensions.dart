import 'dart:io';

extension DirectoryExtension on Directory {
  Directory operator +(Directory other) {
    return Directory('$path/${other.path}');
  }
}
