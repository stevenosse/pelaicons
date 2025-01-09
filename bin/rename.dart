import 'dart:io';

import 'package:path/path.dart' as path;

void renameIconFiles() {
  final directory = Directory('icons');
  if (directory.existsSync()) {
    directory.listSync().forEach((file) {
      if (file is File && file.path.endsWith('.svg_bold.svg')) {
        final newPath = file.path.replaceAll(RegExp(r'\.svg_bold\.svg$'), '_bold.svg');
        final newName = path.basename(newPath).toLowerCase();
        final newFile = File(path.join(path.dirname(file.path), newName));
        file.renameSync(newFile.path);
      }
    });
  }
}

void lowercaseIconNames() {
  final directory = Directory('icons');
  if (directory.existsSync()) {
    directory.listSync().forEach((file) {
      if (file is File && file.path.endsWith('.svg')) {
        final oldName = path.basename(file.path);
        final newName = oldName.toLowerCase();
        if (oldName != newName) {
          final newPath = path.join(path.dirname(file.path), newName);
          file.renameSync(newPath);
        }
      }
    });
  }
}


void main(List<String> args) {
  renameIconFiles();
  lowercaseIconNames();
}