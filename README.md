# 📞 Flutter Group Video Calling App

A robust Flutter application that enables seamless **group video calling** using **Zego UIKit**. Share a unique call ID to connect instantly with others across platforms.

## ✨ Features

- **Group Video Calls**: Connect with multiple participants in a single session.
- **Call ID System**: Easily join a call using a unique identifier.
- **Random User ID**: No login required—users are auto-assigned a temporary ID.
- **Cross-Platform**: Compatible with both Android and iOS devices.
- **Responsive UI**: Clean, user-friendly interface with adaptive layout.
- **Low Latency**: High-quality audio and video with real-time sync.

## 🚀 Getting Started

### Prerequisites

- Flutter SDK ≥ 2.17.0
- Dart SDK ≥ 2.17.0
- IDE: Android Studio or VS Code
- Device or emulator

### Installation

```bash
git clone <your-repository-url>
cd video_calling_app
flutter pub get
flutter run
```

## 📱 Usage Guide

1. Open the app on your device.
2. Input a **Call ID** to start or join a group video session.
3. Tap **"Join Call"**.
4. Share the same Call ID with friends or teammates.

## 📁 Project Structure

```
lib/
├── main.dart         # Home screen with call entry UI
├── calling_page.dart # Zego-powered video interface
└── constant.dart     # App credentials and configurations
```

## 🔧 Configuration

Edit `constant.dart`:

```dart
class Constant {
  static const int appId = YOUR_APP_ID;
  static const String appSign = "YOUR_APP_SIGN";
}
```

> ⚠️ For production apps, secure credentials via environment variables or encrypted storage.

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  zego_uikit_prebuilt_call: ^4.0.0
```

## 🔍 Technical Highlights

### User ID Generation

```dart
final userID = Random().nextInt(1000000).toString();
```

### Group Call Setup

```dart
ZegoUIKitPrebuiltCallConfig.groupVideoCall()
```

- Multiple participants
- Built-in controls (mute, camera switch, leave)
- Auto layout and UI handling
- Real-time updates


---

**Built with ❤️ and Flutter **
