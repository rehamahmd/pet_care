
# Weather App  
A Simple Weather App built using Flutter.

# Note
This project is built on top of a custom Flutter Starter Kit, which provides a foundation for building scalable and maintainable apps. As a result, you may notice some code, files, or modules that are not directly related to this specific app's functionality. These are part of the starter kit and can be ignored or adapted as needed.

# Get Started

- **Run Development Environment**:
```shell
  flutter run --flavor dev -t lib/main/dev.dart
```
- **Run Staging Environment**:
```shell
  flutter run --flavor staging -t lib/main/staging.dart
```
- **Run Production Environment**:
```shell
  flutter run --flavor production -t lib/main/production.dart
```
- **DI Generator**:
```shell
flutter packages pub run build_runner build --delete-conflicting-outputs 
```
- **Icons Generator
```shell
dart run flutter_launcher_icons:main -f flutter_launcher_icons*
```



## The Project Structure

<details>   
   
```plaintext
├── lib/
│ ├── app/
│ │ ├── analytics/
│ │ ├── crashlytics/
│ │ ├── settings/
│ │ ├── app.dart
│ │ └── imports.dart
│ │
│ ├── main/
│ │ ├── _init.dart
│ │ ├── dev.dart
│ │ ├── production.dart
│ │ └── staging.dart
│ │
│ ├── src/
│ │ ├── common/
│ │ │ ├── _di/
│ │ │ ├── constants/
│ │ │ ├── data/
│ │ │ ├── enums/
│ │ │ ├── exceptions/
│ │ │ ├── extensions/
│ │ │ ├── localization/
│ │ │ ├── styles/
│ │ │ ├── utils/
│ │ │ └── widgets/
│ │ ├── features/
│ │ │ └── features.dart
│   │── screens/
│   │ └── screens.dart
```
</details>

## Folder and File Details
<details>
   
#### 1. `lib/app/`
   - **This folder contains the core components of the application.**
   - **`analytics/` and `crashlytics/`:** Store the code related to data analytics and crash reporting here.
   - **`settings/`:** Contains the general application settings.
   - **`app.dart`:** Main app file.
   - **`imports.dart`:** A file that includes the essential imports used across the application.

#### 2. `lib/main/`
   - **Contains the entry point files for different environments of the application.**
   - **`_init.dart`:** Contains the shared initialization across all environments.
   - **`dev.dart`, `production.dart`, `staging.dart`:** Files with specific configurations for development, production, and staging environments.

#### 3. `lib/src/`
   - **This folder contains most of the application's components.**
   
   - **`common/`:**
     - **`_di/`:** Dependency Injection management.
     - **`constants/`:** Stores general constants.
     - **`data/`:** Manages the application's data, such as data sources.
     - **`enums/`**: Holds enums used across the app.
     - **`exceptions/`**: Custom exception classes and handlers.
     - **`extensions/`**: Dart extensions to simplify code.
     - **`localization/`**: Localization setup and management
     - **`styles/`:** Manages visual styles and themes.
     - **`utils/`:** General utilities and helper functions.
     - **`widgets/`:** A collection of reusable UI components such as buttons, icons, text fields, etc.

   - **`features/`:**
     - **This folder contains the main features of the application.**
     - **`features.dart`:** Contains aggregated imports for the application's features.

   - **`screens/`:**
     - **This folder contains the various screens of the application.**
     - **`screens.dart`:** Contains aggregated imports for the screens.

</details>

## Feature Structure
The feature directory organizes code related to a specific part of the app. Here’s a simplified breakdown:
<details>
- **`features/your_feature/`**:
  The main directory for the feature.

- **`features/your_feature/application/`**:
  Contains business logic and services for the feature.
  - **`services/`**:
    - **`service_name.dart`**: is used to manage business logic and operations independently from data access and UI components

- **`features/your_feature/data/`**:
  Manages data-related tasks for the feature.
  - **`repositories/`**:
    - **`repository_name.dart`**: Handles data storage and retrieval.
  - **`source/`**:
    - **`local/`**: For local data sources (e.g., databases).
    - **`remote/`**: For remote data sources (e.g., APIs).

- **`features/your_feature/domain/`**:
  Defines Specific business logic and data models related to the feature.
  - **`entities/`**: Contains data models or value objects.
  - **`i_repositories/`**: Interfaces for repositories.

- **`features/your_feature/presentation/`**:
  Manages the user interface and state.
  - **`cubit/`**: State management logic.
  - **`widgets/`**: UI components 

### Summary

- **`application/`**: Addational Logic For the ui & Validation.
- **`data/`**: Data handling (local and remote).
- **`domain/`**: Core Domain business logic and entities.
- **`presentation/`**: User interface and state management.
</details>



By: [Reham Ahmed](https://www.linkedin.com/in/rehamahmedibrahim/)

# pet_care
