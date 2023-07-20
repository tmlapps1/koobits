# koobits

# Mobile Architecture with GetX

This project demonstrates a mobile application architecture using Flutter and GetX for state management. The architecture adheres to best practices, follows the MVVM (Model-View-ViewModel) design pattern and SOLID design principles, and includes unit testing for the core features.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)
- [Android Studio / VS Code](https://developer.android.com/studio)

### Installing

Follow these steps to get the development environment running:

- Clone the repository.
- Open the project directory.
- Run `flutter pub get` to fetch the project dependencies.
- Run the app with `flutter run`.

## Project Structure

The project follows the MVVM design pattern and is structured as follows:


```
/lib
  /models
    post.dart
  /services
    api_service.dart
  /controllers
    home_controller.dart
  /views
    home_view.dart
    detail_view.dart
  /utils
    constants.dart
  main.dart
```


- **Models** - Contains the data model classes.
- **Services** - Contains the service classes for API communication.
- **Controllers** - Contains GetX Controllers for state and business logic management.
- **Views** - Contains the UI components and pages.
- **Utils** - Contains constants and utility functions.

## Running the tests

Run the tests using the following command:

## Features
- Fetch and display a list of posts from the JSON Placeholder API
- Handle different states like loading, success, and error
- Filter the list of posts by their title using a TextField
## Technologies
- Flutter
- GetX for state management
- http for networking
- Mockito and Flutter Test for testing
- Architecture
This project follows a clean architecture pattern to ensure separation of concerns.
```bash
flutter test


## Running the tests


You can run the tests using the following command:

```bash
flutter test
```

## Built With

- [Flutter](https://flutter.dev/)
- [GetX](https://pub.dev/packages/get)

## Authors

- Jabbir Basha Parlapati 

---

# koobits
