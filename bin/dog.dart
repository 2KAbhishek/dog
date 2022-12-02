import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';

const lineNumber = 'line-number';
const help = 'help';

void main(List<String> arguments) {
  exitCode = 0; // presume success

  final envVarMap = Platform.environment;
  final String helpMessage = envVarMap['DOG_HELP'] ??
      "This is a cat clone written in dart.\nUse -n to show line numbers";

  final parser = ArgParser();
  parser.addFlag(lineNumber, negatable: false, abbr: 'n');
  parser.addFlag(help, negatable: false, abbr: 'h');

  ArgResults argResults = parser.parse(arguments);
  final paths = argResults.rest;

  if (argResults[help]) {
    stdout.write(helpMessage);
  } else {
    dog(paths, showLineNumbers: argResults[lineNumber] as bool);
  }
}

Future<void> dog(List<String> paths, {bool showLineNumbers = false}) async {
  if (paths.isEmpty) {
    // No files provided as arguments. Read from stdin and print each line.
    await stdin.pipe(stdout);
  } else {
    for (final path in paths) {
      var lineNumber = 1;
      final lines = utf8.decoder
          .bind(File(path).openRead())
          .transform(const LineSplitter());
      try {
        await for (final line in lines) {
          if (showLineNumbers) {
            stdout.write('${lineNumber++} ');
          }
          stdout.writeln(line);
        }
      } catch (_) {
        await _handleError(path);
      }
    }
  }
}

Future<void> _handleError(String path) async {
  if (await FileSystemEntity.isDirectory(path)) {
    stderr.writeln('error: $path is a directory');
  } else {
    exitCode = 2;
  }
}
