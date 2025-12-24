import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/gallery/presentation/screens/gallery_screen.dart';

void main() {
  runApp(const ImageViewerApp());
}

class ImageViewerApp extends StatelessWidget {
  const ImageViewerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Viewer',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      home: const GalleryScreen(),
    );
  }
}
