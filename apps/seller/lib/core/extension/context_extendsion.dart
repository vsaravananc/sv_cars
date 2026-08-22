import 'package:flutter/material.dart';

extension DevicePixelRatioOfE on BuildContext {
  double get devicePixelRationOf {
    return MediaQuery.devicePixelRatioOf(this) * 3;
  }
}

extension TextThemeE on BuildContext {
  ThemeData get theme {
    return Theme.of(this);
  }

  TextTheme get texTheme {
    return theme.textTheme;
  }
}

extension MobileDeviceE on BuildContext {
  double get mobileHeight {
    return MediaQuery.sizeOf(this).height;
  }

  double get mobileWidth {
    return MediaQuery.sizeOf(this).width;
  }

  double get mobilePT {
    return MediaQuery.paddingOf(this).top;
  }

  double get mobilePL {
    return MediaQuery.paddingOf(this).left;
  }

  double get mobilePR {
    return MediaQuery.paddingOf(this).right;
  }

  double get mobilePB {
    return MediaQuery.paddingOf(this).bottom;
  }
}
