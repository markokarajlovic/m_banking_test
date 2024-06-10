# m_banking_test

## Flutter doctor in moment of create

[✓] Flutter (Channel stable, 3.22.1, on macOS 14.5 23F79 darwin-arm64, locale
en-US)
[✓] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
[✓] Xcode - develop for iOS and macOS (Xcode 15.4)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2023.3)
[✓] IntelliJ IDEA Community Edition (version 2023.2.5)
[✓] VS Code (version 1.89.1)
[✓] Connected device (3 available)
[✓] Network resources

## clean architecture

UI -> cubit/block -> repository -> data source

## easy_localization

flutter pub run easy_localization:generate --source-dir assets/translations
flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart --source-dir
assets/translations

## code generation

flutter packages pub run build_runner build --delete-conflicting-outputs

