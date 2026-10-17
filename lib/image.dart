import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Image Example'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 350,
            color: Colors.grey[300],
            child: Image.asset(
              // ==========================================
              // 1. IMAGE SOURCE / PATH (Positional Argument)
              // ==========================================
              // name: Path to the local asset image defined in pubspec.yaml.
              "images/IMG-20260428-WA0022.jpg",

              /*
              ==========================================
              TYPES / CONSTRUCTORS OF Image WIDGET:
              ==========================================
              1. Image.asset("images/photo.png"):
                 - Loads an image from the application's local bundled assets declared in pubspec.yaml.

              2. Image.network("https://example.com/photo.png"):
                 - Fetches and displays an image from the internet via HTTP/HTTPS.
                 - Supports headers, loadingBuilder, and errorBuilder.

              3. Image.file(File("/path/to/storage/photo.png")):
                 - Loads an image directly from the device's local file storage (e.g., from camera or gallery).
                 - Requires 'dart:io'.

              4. Image.memory(uint8ListBytes):
                 - Loads an image directly from raw byte data in memory (Uint8List).
                 - Ideal for base64-decoded images or dynamically generated graphics.

              5. Image(image: AssetImage(...) or NetworkImage(...)):
                 - The generic Image constructor accepting any ImageProvider instance.
              */

              // ==========================================
              // 2. WIDTH & HEIGHT PROPERTIES
              // ==========================================
              // width: Sets the display width of the image in logical pixels.
              width: 300,
              // height: Sets the display height of the image in logical pixels.
              height: 300,
              /*
              Other ways to specify width & height:
              - double.infinity: Expands the image to take all available horizontal or vertical space.
              - MediaQuery.of(context).size.width * 0.8: Responsive sizing relative to device screen width.
              - null (default): Image retains its intrinsic pixel dimensions or obeys parent widget constraints.
              */

              // ==========================================
              // 3. FIT PROPERTY (BoxFit)
              // ==========================================
              // fit: Controls how the image is scaled and inscribed inside its allocated box.
              fit: BoxFit.cover,
              /*
              All available BoxFit options:
              - BoxFit.cover: Scales image proportionally to fill entire box; crops parts that overflow.
              - BoxFit.contain (default): Scales image proportionally to fit entirely inside box; no cropping, but may leave letterboxing.
              - BoxFit.fill: Stretches image to completely fill both width and height, ignoring aspect ratio.
              - BoxFit.fitWidth: Scales image proportionally to match exact width of box; height may overflow or leave space.
              - BoxFit.fitHeight: Scales image proportionally to match exact height of box; width may overflow or leave space.
              - BoxFit.none: Centers image in its original intrinsic size without any scaling.
              - BoxFit.scaleDown: Like 'contain', but only shrinks larger images down; never scales smaller images up.
              */

              // ==========================================
              // 4. ALIGNMENT PROPERTY
              // ==========================================
              // alignment: Aligns the image inside its designated bounding box (especially when cropped or letterboxed).
              alignment: Alignment.center,
              /*
              Other ways to define alignment:
              - Predefined positions:
                  Alignment.topLeft,    Alignment.topCenter,    Alignment.topRight
                  Alignment.centerLeft, Alignment.center,       Alignment.centerRight
                  Alignment.bottomLeft, Alignment.bottomCenter, Alignment.bottomRight
              - Custom coordinates: Alignment(x, y) where (-1.0, -1.0) is top-left, (0.0, 0.0) is center, and (1.0, 1.0) is bottom-right.
              - AlignmentDirectional.topStart / AlignmentDirectional.centerEnd: Supports RTL/LTR languages automatically.
              */

              // ==========================================
              // 5. REPEAT PROPERTY
              // ==========================================
              // repeat: Defines how empty areas are filled if the image is smaller than its allocated bounding box.
              repeat: ImageRepeat.noRepeat,
              /*
              Other ImageRepeat options:
              - ImageRepeat.noRepeat (default): Image is drawn once; unused space remains empty.
              - ImageRepeat.repeat: Tiles the image across both horizontal (X) and vertical (Y) axes.
              - ImageRepeat.repeatX: Repeatedly tiles the image along the horizontal axis only.
              - ImageRepeat.repeatY: Repeatedly tiles the image along the vertical axis only.
              */

              // ==========================================
              // 6. COLOR & COLOR BLEND MODE
              // ==========================================
              // color: Tint color applied over the image.
              // colorBlendMode: Specifies how the tint color blends with the image pixels.
              // color: Colors.blue,
              // colorBlendMode: BlendMode.color,
              /*
              Other popular BlendMode options:
              - BlendMode.srcIn: Replaces all visible image pixels with the tint color (great for monochrome icons).
              - BlendMode.modulate: Multiplies image pixel colors with tint color (produces smooth color tinting).
              - BlendMode.darken: Selects darker pixels between image and tint color.
              - BlendMode.lighten: Selects lighter pixels between image and tint color.
              - BlendMode.dstATop: Draws the tint color behind transparent parts of the image.
              */

              // ==========================================
              // 7. ERROR BUILDER & FRAME BUILDER
              // ==========================================
              // errorBuilder: Fallback widget displayed if the image fails to load (missing file, 404, corrupt data).
              errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                return const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.broken_image, color: Colors.red, size: 50),
                      SizedBox(height: 8),
                      Text("Failed to load image", style: TextStyle(color: Colors.red)),
                    ],
                  ),
                );
              },

              // frameBuilder: Tracks loading frames; enables smooth fade-in animations on initial load.
              frameBuilder: (BuildContext context, Widget child, int? frame, bool wasSynchronouslyLoaded) {
                if (wasSynchronouslyLoaded) return child;
                return AnimatedOpacity(
                  opacity: frame == null ? 0 : 1,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                  child: child,
                );
              },

              /*
              For Image.network, loadingBuilder is available to show download progress:
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              */

              /*
              ==========================================
              OTHER AVAILABLE PROPERTIES INSIDE Image:
              ==========================================
              - semanticLabel: "Profile picture" -> Text description for screen readers and accessibility tools.
              - excludeFromSemantics: true/false -> Omits image from accessibility tree when used purely for decoration.
              - opacity: AlwaysStoppedAnimation(0.8) -> Sets overall opacity (from 0.0 fully transparent to 1.0 fully opaque).
              - filterQuality: FilterQuality.medium (options: none, low, medium, high) -> Adjusts rendering smoothness vs performance.
              - isAntiAlias: true/false -> Reduces pixelation and jagged edges when scaling or rotating.
              - cacheWidth / cacheHeight: 300 -> Decodes image to a smaller resolution in memory to prevent memory overhead.
              - matchTextDirection: true/false -> Automatically flips image horizontally in Right-to-Left (RTL) reading directions.
              - gaplessPlayback: true/false -> Eliminates screen flickering when dynamically changing image providers.
              */
            ),
          ),
        ),
      ),
    );
  }
}
