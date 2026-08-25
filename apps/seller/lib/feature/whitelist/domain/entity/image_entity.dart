import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

final class ImageFileEntity extends Equatable {
  const ImageFileEntity({required this.path, this.name, this.mimeType});

  factory ImageFileEntity.fromJson({required XFile file}) {
    return ImageFileEntity(
      path: file.path,
      name: file.name,
      mimeType: file.mimeType,
    );
  }

  final String path;
  final String? name;
  final String? mimeType;

  @override
  List<Object?> get props => [path, name, mimeType];
}
