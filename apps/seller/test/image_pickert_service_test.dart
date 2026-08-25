import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:seller/feature/whitelist/domain/entity/image_entity.dart';
import 'package:seller/service/image_picker_service.dart';

class MockImagePickerServiceImpl extends Mock
    implements ImagePickerServiceImpl {}

void main() {
  late MockImagePickerServiceImpl mockImagePickerServiceImpl;
  const ImageFileEntity _imF = ImageFileEntity(
    path: 'dummy',
    name: 'dummy',
    mimeType: 'dummy',
  );
  setUp(() {
    mockImagePickerServiceImpl = MockImagePickerServiceImpl();
  });

  group(
    '''
    Given ImagePickerServiceImpl create When 
    call selectMultipleImage then return List of ImageFileEntity ''',
    () {
      test('return a empty list', () async {
        when(() => mockImagePickerServiceImpl.selectMultipleImage())
            .thenAnswer((_) async => []);
        final result = await mockImagePickerServiceImpl.selectMultipleImage();
        expect(result, []);
      });
      test('return a single list', () async {
        when(() => mockImagePickerServiceImpl.selectMultipleImage())
            .thenAnswer((_) async => const [_imF]);
        final result = await mockImagePickerServiceImpl.selectMultipleImage();
        expect(result?.length, 1);
        expect(result, [_imF]);
      });
      test('return a null', () async {
        when(() => mockImagePickerServiceImpl.selectMultipleImage())
            .thenAnswer((_) async => null);
        final result = await mockImagePickerServiceImpl.selectMultipleImage();
        expect(result, null);
      });
    },
  );
}
