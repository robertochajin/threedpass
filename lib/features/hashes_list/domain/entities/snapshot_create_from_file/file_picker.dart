part of './snapshot_create_from_file.dart';

class _FilePicker {
  static const allowedExtentions = ['obj', 'stl'];

  /// Get and validate file
  Future<String> pickFile() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );
    if (result != null && result.files.isNotEmpty) {
      final filExtension = result.files.first.extension;
      if (filExtension != null && allowedExtentions.contains(filExtension)) {
        final realFilePath = result.files.first.path!;
        return realFilePath;
      }
    }
    throw FilePickerException('No file selected');
  }
}

class FilePickerException implements Exception {
  final String message;

  FilePickerException(this.message);
}
