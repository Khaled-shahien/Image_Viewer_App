import 'package:flutter/material.dart';

import '../../../../core/constants/image_paths.dart';
import '../widgets/gallery_tile.dart';
import 'viewer_screen.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
        actions: [
          IconButton(
            tooltip: 'Open swipe viewer',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ViewerScreen(
                    imagePaths: galleryImagePaths,
                    initialIndex: 0,
                  ),
                ),
              );
            },
            icon: const Icon(Icons.slideshow_rounded),
          ),
          const SizedBox(width: 4),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            itemCount: galleryImagePaths.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              final path = galleryImagePaths[index];
              return GalleryTile(
                path: path,
                index: index,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => ViewerScreen(
                        imagePaths: galleryImagePaths,
                        initialIndex: index,
                      ),
                    ),
                  );
                },
                borderColor: colorScheme.outlineVariant,
              );
            },
          ),
        ),
      ),
    );
  }
}
