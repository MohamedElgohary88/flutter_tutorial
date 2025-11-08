# Flutter Tutorial: A Clean Architecture Demo

This project is a practical demonstration of a Flutter application built with a focus on clean architecture and modern development practices. It serves as a tutorial for implementing a scalable and maintainable mobile app using BLoC for state management, Dio for network requests, and get_it for dependency injection.

## 🚀 Features

- **User List:** Fetches and displays a list of users from a remote API.
- **Clean Architecture:** Organizes code into distinct layers (data, domain, presentation) for better separation of concerns.
- **State Management:** Uses the BLoC pattern to manage application state in a predictable and testable way.
- **Dependency Injection:** Employs `get_it` to handle dependency injection, making the codebase more modular and easier to manage.
- **Networking:** Leverages the `dio` package for efficient and powerful HTTP requests.

## 🛠️ Tech Stack & Architecture

- **Flutter:** The UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **BLoC:** A predictable state management library that helps implement the BLoC (Business Logic Component) design pattern.
- **Dio:** A powerful HTTP client for Dart, which supports interceptors, global configuration, FormData, request cancellation, file downloading, timeout, and more.
- **get_it:** A simple service locator for Dart and Flutter projects with a focus on performance and ease of use.
- **Clean Architecture:** The project follows the principles of Clean Architecture, separating the code into three main layers:
    - **Data:** Responsible for data retrieval from remote or local sources.
    - **Domain:** Contains the core business logic and entities of the application.
    - **Presentation:** Handles the UI and user interaction, using BLoC to communicate with the domain layer.

## 🏁 Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

- Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
- An IDE such as Android Studio or VS Code

### Installation

1.  Clone the repo:
    ```sh
    git clone https://github.com/your_username/flutter_tutorial.git
    ```
2.  Navigate to the project directory:
    ```sh
    cd flutter_tutorial
    ```
3.  Install dependencies:
    ```sh
    flutter pub get
    ```
4.  Run the app:
    ```sh
    flutter run
    ```

## 📸 Screenshots

*A screenshot of the user list screen will be added here.*

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request

## 📄 License

Distributed under the MIT License. See `LICENSE` for more information.
