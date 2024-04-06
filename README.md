Unshelled Assessment
Description

This project is a Flutter application that fetches data from a paginated API and displays it in a user-friendly interface. It utilizes the Openbrewerydb API for fetching beer data, implements pagination with infinite scrolling, and provides detailed screens for individual beer items. The architecture follows the MVVM + Repository pattern, and state management is handled using the Provider package. Additionally, error handling for internet connectivity issues is implemented, with appropriate messages and a retry mechanism.
Features

    Paginated list view of beer items fetched from the Openbrewerydb API
    Detail screen for each beer item
    Infinite scrolling for pagination
    Error handling for internet connectivity issues
    Retry mechanism for failed API requests
    Clean and organized code structure
    Utilization of Provider for state management
    Logger for debugging
    Mocking API requests for testing


Technologies & Packages Used

    Provider: ^6.1.1
    logger: ^2.0.2+1
    http: ^1.2.0
    mockito: ^5.4.4
    url_launcher: ^6.2.5
    connectivity: ^3.0.6

Installation

    Clone the repository: git clone https://github.com/your-username/your-repository.git
    Navigate to the project directory: cd your-repository
    Install dependencies: flutter pub get
    Run the app: flutter run

Usage

    Upon launching the app, the paginated list of beers will be displayed.
    Scroll down to load more beers using infinite scrolling.
    Tap on a beer item to view its details and you can click on the websites as well,it would navigate to the chrome.
    there's connectivity to alert users for network status.

Folder Structure

    lib/
        data/
            models/: Contains data models for the application.
            repositories/: Repositories for managing data access.
            services/: API services.
        presentation/
            pages/: Screens of the application.
            viewmodels/: View models for managing UI logic.
        utils/: Utility functions.
        main.dart: Entry point of the application.

Testing

    Unit tests are available for data repositories and view models using the Mockito package.
    *Note: repository setter needs to be call in repository thats why the test have been commented out
License

This project is licensed under the MIT License.
Author

    Bakare abdulwadud

Acknowledgments

    Inspired by Openbrewerydb API
    Thanks to the Flutter community and package developers.

The APK build can be downloaded from Google Drive.

