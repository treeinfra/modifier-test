flutter pub get || exit 1
dart format --output=none --set-exit-if-changed . || exit 1
flutter analyze --fatal-infos || exit 1
flutter test || exit 1

cd example || exit 1
flutter test || exit 1
cd ..

flutter pub publish --dry-run || exit 1
