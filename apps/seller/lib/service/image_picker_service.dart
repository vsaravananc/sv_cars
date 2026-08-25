import 'package:image_picker/image_picker.dart';
import 'package:seller/feature/whitelist/domain/entity/image_entity.dart';


abstract class ImagePickerIF {
  Future<List<ImageFileEntity>?> selectMultipleImage();
}

class ImagePickerServiceImpl implements ImagePickerIF {
  @override
  Future<List<ImageFileEntity>?> selectMultipleImage() async {
    final List<XFile> selectedFile = await ImagePicker().pickMultiImage();
    return selectedFile.map((e) => ImageFileEntity.fromJson(file: e)).toList();
  }
}
