import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seller/feature/whitelist/domain/entity/image_entity.dart';
import 'package:seller/feature/whitelist/domain/usecase/image_pick_usecase.dart';

part 'image_event.dart';
part 'image_state.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc({required this.imagePickUsecase}) : super(ImageInitial()) {
    on<PickMultiImageEvent>(_pickMultiImageEvent);
    on<ResetImageEvent>((event, emit) {
      emit(ImageInitial());
    });
  }
  final ImagePickUsecase imagePickUsecase;

  Future<void> _pickMultiImageEvent(
    PickMultiImageEvent event,
    Emitter<ImageState> emit,
  ) async {
    emit(OnImagePicking());
    final result = await imagePickUsecase.selectMultipleImage();
    if (result != null && result.isNotEmpty) {
      emit(ImagePicked(pickedImageList: result));
    } else {
      emit(ImagePickeFailed());
    }
  }
}
