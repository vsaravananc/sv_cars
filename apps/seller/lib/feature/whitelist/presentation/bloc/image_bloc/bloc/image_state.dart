part of 'image_bloc.dart';

sealed class ImageState {
  const ImageState();
}

final class ImageInitial extends ImageState {}

final class OnImagePicking extends ImageState {}

final class ImagePicked extends Equatable implements ImageState {
  const ImagePicked({required this.pickedImageList});
  final List<ImageFileEntity> pickedImageList;

  @override
  List<Object?> get props => pickedImageList;
}

final class ImagePickeFailed implements ImageState {}
