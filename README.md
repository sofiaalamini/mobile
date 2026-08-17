# Frases do Dia

A motivational phrase generator app built with Flutter and Dart.

## Overview

**Frases do Dia** is a simple yet inspiring app that displays random Portuguese motivational phrases. Perfect for daily motivation and encouragement.

## Features

✨ **100 Unique Phrases** - A curated collection of motivational phrases  
🎨 **Beautiful Green Theme** - Inspired by the original iOS design  
📱 **Cross-Platform** - Works seamlessly on iOS and Android  
🔄 **Random Generation** - Get a new phrase with a single tap  
💚 **Simple & Elegant** - Clean, distraction-free interface  

## Screenshots

The app displays:
- Header with app title
- Large quote icon as visual element
- Current motivational phrase
- Author attribution
- Button to generate new phrase

## Getting Started

### Prerequisites
- Flutter SDK >= 3.0.0
- Dart SDK
- Xcode (for iOS development)
- Android Studio (for Android development)

### Installation

1. Clone the repository:
```bash
cd frases_do_dia
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

### Build for Production

**iOS:**
```bash
flutter build ios
```

**Android:**
```bash
flutter build apk
# or for Play Store
flutter build appbundle
```

## Architecture

The app uses a simple architecture with:
- Single `StatefulWidget` for state management
- List of phrases with metadata
- Random selection using Dart's `Random` class
- Material Design widgets for UI

## Project Structure

```
frases_do_dia/
├── lib/
│   └── main.dart           # Main application file
├── pubspec.yaml            # Project configuration
├── README.md               # This file
├── android/                # Android configuration
├── ios/                    # iOS configuration
└── web/                    # Web configuration
```

## Phrases

The app contains 100 motivational phrases in Portuguese, sourced from famous personalities and authors including:
- Theodore Roosevelt
- Steve Jobs
- Confúcio
- Paulo Coelho
- And many more...

## Customization

To add or modify phrases, edit the `phrases` list in `lib/main.dart`:

```dart
static const List<Map<String, String>> phrases = [
  {'text': 'Your phrase here', 'author': 'Author Name'},
  // Add more phrases...
];
```

## Technologies Used

- **Language:** Dart
- **Framework:** Flutter
- **Architecture:** MVC (Model-View-Controller)
- **State Management:** StatefulWidget

## License

This project is open source and available under the MIT License.

## Contributing

Contributions are welcome! Feel free to fork the project and submit pull requests.

## Support

For issues and questions, please open an issue on the GitHub repository.

---

**Happy coding! Stay inspired with Frases do Dia! 💚**
