# Personal Expense Tracker App

## Overview
The Personal Expense Tracker App is a Flutter-based mobile application designed to help users track and manage their personal expenses efficiently. The app offers a simple yet comprehensive interface for managing daily, weekly, and monthly expenses, adhering to Clean Architecture principles.

---

## Features
### Core Features
- **Add Expense**: Users can input the amount, date, and a brief description of expenses.
- **View Expenses**: Display expenses in a list, sorted and filterable by date.
- **Edit/Delete Expense**: Modify or remove existing expense entries.
- **Expense Summary**: Categorized expense summaries for weekly or monthly analysis.
- **Reminder Notifications**: *Pending implementation.*

### Additional Features
- Responsive UI design.
- Data persistence using Hive.
- Clean Architecture implementation with separation of concerns.
- State management using Provider.
- *Pending*: Unit tests for business logic.

---

## Installation and Setup
### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart (>=2.18.0)
- Android Studio or VS Code
- Android/iOS emulator or physical device for testing

### Steps
1. Clone the repository:
   ```bash
   git clone <repository_url>
   cd expense_tracker
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```
4. For release builds, follow the [Flutter documentation](https://docs.flutter.dev/deployment).

---

## Project Structure
### Clean Architecture Layers
1. **Presentation Layer**
   - Responsible for UI components and state management.
   - Uses Flutter widgets for responsive design.

2. **Domain Layer**
   - Contains business logic and use cases.
   - Interfaces with repositories for data operations.

3. **Data Layer**
   - Manages data sources (local database).
   - Implements repositories defined in the Domain layer.

### Key Directories
- `lib/`
  - `data/`: Models and database handling.
  - `domain/`: Business logic and use cases.
  - `presentation/`: Widgets, screens, and state management.
  - `core/`: Shared utilities and configurations.

---

## Dependencies
### Primary Dependencies
- **Hive**: For local data persistence.
- **Provider**: For state management.
- **Flutter Local Notifications**: *Pending implementation.*

### Development Dependencies
- **Flutter Test**: For unit testing.
- **Mockito**: *Planned for unit test mocking.*

---

## Testing
- *Pending*: Unit tests for business logic.
- Testing framework setup is in place for integration and unit testing.

---

## Future Improvements
- Implement reminder notifications for daily expense entries.
- Add unit tests for all business logic components.
- Enhance UI/UX with animations and transitions.
- Introduce multi-language support and user authentication.

---

## Design and Development Notes
- Followed Clean Architecture principles for scalability and maintainability.
- Used Hive for efficient local data storage.
- Adopted Provider for reactive and simplified state management.
- Focused on a minimalistic and intuitive user interface.

---

## Contributions
Pull requests are welcome. For significant changes, please open an issue first to discuss your proposed changes.

---

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.

---

## Contact
For queries or suggestions, feel free to reach out:
- **Wilson Daniel**
- Email: danielwilson71935@gmail.com

