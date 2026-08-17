# Frases do Dia - Flutter App Development

## Project Overview
Flutter app that generates random motivational phrases. Designed for iOS and Android platforms with a green-themed UI.

## Setup and Build Instructions

### Prerequisites
- Flutter SDK (>= 3.0.0)
- Dart SDK
- iOS development tools (for iOS)
- Android Studio (for Android)

### Getting Started

```bash
# Navigate to project directory
cd frases_do_dia

# Get dependencies
flutter pub get

# Run app
flutter run
```

### Platform-Specific Commands

```bash
# iOS
flutter run -d ios

# Android
flutter run -d android
```

## Project Structure
```
lib/
  └── main.dart          # Main application file with all UI and logic
pubspec.yaml            # Project configuration and dependencies
```

## Features Implemented
- 100 Portuguese motivational phrases with authors
- Random phrase generation on button click
- Beautiful green-themed UI matching the original design
- Responsive layout for both iOS and Android
- Clean and maintainable code structure

## Development Notes
- Uses Flutter's Material Design
- State management via StatefulWidget
- Random phrase selection using Dart's Random class
- No external dependencies required beyond Flutter

## Next Steps
- Build for iOS: `flutter build ios`
- Build for Android: `flutter build apk` or `flutter build appbundle`
- Test on devices and emulators
