import 'package:seller/feature/whitelist/domain/entity/image_entity.dart';
import 'package:seller/service/image_picker_service.dart';

class ImagePickUsecase {
  const ImagePickUsecase({required this.imagePickerIF});
  final ImagePickerIF imagePickerIF;
  Future<List<ImageFileEntity>?> selectMultipleImage() {
    return imagePickerIF.selectMultipleImage();
  }
}
