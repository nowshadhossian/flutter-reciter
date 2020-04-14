1
To build favicon:
Change image location in pubspec.yaml. Then run:
flutter pub run flutter_launcher_icons:main

2
for android building
flutter build apk

3
to build for production
flutter build not increase version number
flutter build appbundle --build-name=1.0.2 --build-number=2