# Project Name

This project contains two main components:
1. A Flutter application located in the `bkk_drugstore_app` directory.
2. A Docker setup located in this directory.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (for the Flutter project)
- [Docker](https://docs.docker.com/get-docker/) (for the Docker setup)

## Flutter Project

The Flutter project is located in the `bkk_drugstore_app` directory. 

### Running the Flutter Application

1. Navigate to the `bkk_drugstore_app` directory:

    ```sh
    cd bkk_drugstore_app
    ```

###  Enable Google Map SDK for each platform 

### Android
Specify your Google Maps API key in the application manifest `android/app/src/main/AndroidManifest.xml`:

```xml
<manifest ...
  <application ...
    <meta-data android:name="com.google.android.geo.API_KEY"
               android:value="YOUR KEY HERE"/>
```

### iOS
Specify your Google Maps API key in the application delegate `ios/Runner/AppDelegate.swift`:

```swift
import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("YOUR KEY HERE")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
```

2. Get the required dependencies:

    ```sh
    flutter pub get
    ```

3. Run the Flutter application:

    ```sh
    flutter run
    ```

## Docker Setup

### Running the Docker Container

1. Run the Docker container:

    ```sh
    docker-compose up -d
    ```


