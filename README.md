# Image Viewer App

A modern Flutter application that provides an elegant and intuitive way to view and navigate through collections of images. The app features both a gallery view and a full-screen viewer with advanced navigation capabilities.


## 📱 Screenshots

<p align="center">
  <img src="screenshot/Screenshot_1.png" width="200" alt="Gallery Screen"/>
  <img src="screenshot/Screenshot_2.png" width="200" alt="Image Screen_1"/>
  <img src="screenshot/Screenshot_3.png" width="200" alt="Image Screen_2"/>
  <img src="screenshot/Screenshot_4.png" width="200" alt="Image Screen_3"/>
</p>

<p align="center">
  <img src="screenshot/Screenshot_5.png" width="200" alt="Image Screen_4"/>
  <img src="screenshot/Screenshot_6.png" width="200" alt="Image Screen_5"/>
</p>
## 🚀 Features

- **Dual View Modes**: Switch between gallery view and full-screen swipe viewer
- **Interactive Viewer**: Pinch-to-zoom functionality for detailed image inspection
- **Gesture Navigation**: Intuitive swipe gestures to navigate between images
- **Thumbnail Gallery**: Grid-based thumbnail view for quick image selection
- **Pagination Controls**: Dots indicator and navigation buttons for easy browsing
- **Responsive Design**: Optimized for all screen sizes and orientations
- **Dark/Light Theme**: Automatic theme switching based on system preferences
- **Error Handling**: Graceful handling of missing images with fallback UI
- **Smooth Animations**: Hero transitions and animated UI elements
- **Material Design 3**: Modern UI following latest design guidelines

## 🏗️ Architecture

This application follows a feature-based architecture with clean separation of concerns:

### Project Structure
```
lib/
├── core/                 # Shared components
│   ├── constants/        # App-wide constants
│   └── theme/            # Theme configurations
└── features/             # Feature modules
    └── gallery/          # Gallery feature
        └── presentation/ # UI layer
            ├── screens/  # View screens
            └── widgets/  # Reusable components
```

### Key Architectural Patterns
- **Feature-based organization**: Components grouped by functionality
- **Presentation layer**: Separation of screens and widgets
- **State management**: Flutter's built-in StatefulWidget for local state
- **Constants pattern**: Centralized image paths and configuration
- **Theme system**: Consistent design system using Material 3

## 🛠️ Technologies Used

- **Flutter**: Cross-platform UI toolkit
- **Dart**: Programming language
- **Material Design 3**: Modern design system
- **image**: ^4.7.2 - Image processing package
- **Material Icons**: Built-in icon library

## 📦 Setup and Installation

### Prerequisites
- Flutter SDK (3.10.0 or higher)
- Dart SDK (bundled with Flutter)
- Android Studio/VS Code or preferred IDE

### Installation Steps
1. Clone or download the repository:
   ```bash
   git clone <repository-url>
   cd image_viewer_app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Ensure your images are in the `assets/images/` folder

4. Run the application:
   ```bash
   flutter run
   ```

## 📁 Directory Structure

```
lib/
├── core/
│   ├── constants/
│   │   └── image_paths.dart          # Image path definitions
│   └── theme/
│       └── app_theme.dart            # Material 3 theme configuration
└── features/
    └── gallery/
        └── presentation/
            ├── screens/
            │   ├── gallery_screen.dart # Thumbnail grid view
            │   └── viewer_screen.dart  # Full-screen swipe viewer
            └── widgets/
                ├── dots_indicator.dart      # Pagination indicator
                ├── gallery_tile.dart        # Thumbnail tile component
                └── image_missing_full.dart  # Missing image placeholder
```

## 🎨 UI Components

### Gallery Screen
- Grid layout displaying image thumbnails
- Tap to open full-screen viewer
- Slideshow button for quick access to viewer mode

### Viewer Screen
- Full-screen image display with swipe navigation
- Pinch-to-zoom functionality
- Navigation controls (previous/next buttons)
- Dots indicator showing current position
- Thumbnail strip for quick navigation
- Page counter showing current/total

### Widgets
- **Dots Indicator**: Visual pagination indicator
- **Gallery Tile**: Thumbnail display with error handling
- **Image Missing Components**: Graceful fallbacks for missing images

## 🖼️ Adding Images

To use your own images:

1. Place your images in the `assets/images/` folder
2. Supported formats: JPG, PNG, GIF, WebP, and other common formats
3. Update the `galleryImagePaths` constant in `lib/core/constants/image_paths.dart`

Example:
```dart
const List<String> galleryImagePaths = <String>[
  'assets/images/your_image1.jpg',
  'assets/images/your_image2.jpg',
  'assets/images/your_image3.jpg',
  // Add more as needed
];
```

4. Ensure the image paths are registered in `pubspec.yaml`:
```yaml
flutter:
  assets:
    - assets/images/
```

## 📱 Usage

- **Gallery View**: Browse thumbnails in a grid layout
- **Swipe Navigation**: Swipe left/right to navigate between images in viewer mode
- **Thumbnail Selection**: Tap thumbnails in the bottom strip to jump to specific images
- **Zoom**: Pinch to zoom in/out on images
- **Navigation**: Use arrow buttons or swipe to move between images
- **Slideshow**: Tap the slideshow icon to switch from gallery to viewer mode

## 🧪 Testing

The app includes basic widget tests. To run tests:

```bash
flutter test
```

## 🚀 Building for Production

To build for release:

```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release

# Web
flutter build web
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines
- Follow Flutter's official style guide
- Use meaningful variable and function names
- Write documentation for public APIs
- Ensure consistent UI/UX patterns
- Test on multiple screen sizes

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

If you encounter any issues or have questions:
- Check the existing issues
- Create a new issue with detailed information
- Provide steps to reproduce the problem
- Include your Flutter version and device information

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Material Design team for design guidelines
- All contributors who help maintain and improve the project