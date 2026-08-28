part of 'image_bloc.dart';

sealed class ImageEvent {}

class PickMultiImageEvent extends ImageEvent {}

class ResetImageEvent extends ImageEvent {}
