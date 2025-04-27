# smart_farm_admin

A Flutter application for customers to monitor their chicken farming batches and view detailed farming-batch reports at Ut Thoi's Farm. ([github.com](https://github.com/thienhdbse170185/CP2025.Mobile.Admin))

## Table of Contents

- [About](#about)
- [Features](#features)
- [Architecture & Folder Structure](#architecture--folder-structure)
- [Tech Stack](#tech-stack)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Running the App](#running-the-app)
- [Configuration](#configuration)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

---

## About

`smart_farm_admin` is a **Flutter** mobile application designed to enable farm owners and customers to:

- **Authenticate** securely via JWT-based login. ([github.com](https://github.com/thienhdbse170185/CP2025.Mobile.Admin/blob/main/lib/src/app.dart))
- **View** a dashboard summarizing cage statuses and active farming batches.
- **Manage** cages: browse, filter, and inspect chicken coops.
- **Monitor** farming batches: list batches and explore detailed growth stage metrics.
- **Record** and review livestock health symptoms.
- **Generate** and export comprehensive farming-batch reports as PDF documents.
- **Receive** real-time push notifications for critical updates.
- **Personalize** their profile and application theme. ([github.com](https://github.com/thienhdbse170185/CP2025.Mobile.Admin/blob/main/lib/src/app.dart))

## Features

- **Authentication & Authorization**: JWT login flows.
- **Dashboard**: Overview of key farm metrics.
- **Cage Management**: CRUD for chicken coops.
- **Farming Batch**: Detailed batch listings and metrics.
- **Medical Symptom**: Logging and history viewing.
- **Report Generation**: PDF export using the `pdf` package.
- **Notifications**: Firebase Cloud Messaging integration.
- **Offline Caching**: Data persistence with Hive.
- **Real-Time Updates**: SignalR and WebSocket support.
- **Localization**: Multi-language support via ARB files.

## Architecture & Folder Structure

```text
lib
├── api_endpoints.dart       # REST API routes definitions ([github.com](https://github.com/thienhdbse170185/CP2025.Mobile.Admin/blob/main/lib/api_endpoints.dart))
├── main.dart                # Entry point
└── src
    ├── core/                # Shared configuration & utilities
    │   ├── common/          # Reusable widgets & helpers
    │   ├── network/         # HTTP client (Dio) and interceptors
    │   ├── theme/           # Theming & style definitions
    │   └── utils/           # Utility functions (e.g., date formatting)
    ├── model/
    │   ├── repository/      # API clients & data repositories
    │   └── data/            # Data classes & JSON serialization
    ├── viewmodel/           # BLoC/Cubit state management
    ├── view/                # UI screens & widgets
    └── app.dart             # Dependency injection & router setup
``` ([github.com](https://github.com/thienhdbse170185/CP2025.Mobile.Admin/tree/main/lib), [github.com](https://github.com/thienhdbse170185/CP2025.Mobile.Admin/blob/main/lib/src/app.dart))

## Tech Stack

- **Flutter & Dart**  
- **State Management**: flutter_bloc  
- **Networking**: Dio, SignalR, WebSocket Channel  
- **Local Storage**: Hive, Shared Preferences  
- **Notifications**: Firebase Cloud Messaging  
- **PDF Generation**: `pdf` & `open_file` packages  
- **Charts**: fl_chart  
- **QR Scanning**: mobile_scanner  
- **Routing**: go_router  
- **Additional**: lottie, flutter_dotenv, percent_indicator, app_settings  

## Getting Started

### Prerequisites

- Flutter SDK ≥ 3.7.0  
- Android Studio / Xcode  
- Backend REST API available (see `ApiEndpoints`)  
- Firebase project for FCM (optional for notifications)  
- Emulator or physical device  

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/thienhdbse170185/CP2025.Mobile.Admin.git
   cd CP2025.Mobile.Admin
   ```
2. **Fetch dependencies**
   ```bash
   flutter pub get
   ```
3. **Environment setup**
   - Create a `.env` file with `API_BASE_URL` and necessary keys.
   - (Optional) Add `google-services.json` to `android/app/` and `GoogleService-Info.plist` to `ios/Runner/` for FCM.

### Running the App

```bash
flutter run
```

## Configuration

- **API Base URL**: Defined in `.env` and loaded by `flutter_dotenv`.  
- **Routes**: Configured in `lib/src/core/router.dart`.  
- **Theming**: Customizable in `lib/src/core/theme`.  

## Testing

Unit and widget tests are under the `/test` directory. Run all tests with:

```bash
flutter test
```

## Contributing

1. Fork the repository  
2. Create a feature branch: `git checkout -b feature/NewFeature`  
3. Commit changes: `git commit -m 'Add new feature'`  
4. Push branch: `git push origin feature/NewFeature`  
5. Open a Pull Request  

## License

This project is released under the **MIT License**.

