import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:seller/feature/whitelist/domain/usecase/image_pick_usecase.dart';
import 'package:seller/feature/whitelist/presentation/bloc/image_bloc/bloc/image_bloc.dart';
import 'package:seller/service/image_picker_service.dart';

final getIt = GetIt.instance;

abstract final class DpInject {
  static void inject() {
    final WidgetsBinding widgetsBinding =
        WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    FlutterNativeSplash.remove();
    getIt.registerLazySingleton<ImagePickerIF>(() {
      return ImagePickerServiceImpl();
    });
    getIt.registerLazySingleton<ImageBloc>(() {
      return ImageBloc(
        imagePickUsecase: ImagePickUsecase(
          imagePickerIF: getIt<ImagePickerIF>(),
        ),
      );
    });
  }
}
