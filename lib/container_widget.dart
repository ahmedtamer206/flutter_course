import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: const Text("Subjects Online"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          // ==========================================
          // 1. DECORATION PROPERTY
          // ==========================================
          // decoration: Paints background color, borders, shadows, gradients, and shapes behind the child.
          // Note: If 'decoration' is used, you CANNOT set 'color' directly on Container; it must be inside decoration.
          // Other decoration types: ShapeDecoration (supports custom shapes like StadiumBorder, BeveledRectangleBorder).
          decoration: BoxDecoration(
            // ------------------------------------------
            // 1.1 COLOR PROPERTY
            // ------------------------------------------
            // color: Defines the background color of the container.
            color: const Color.fromARGB(255, 0, 0, 0),
            /*
            Other ways to define color:
            - Colors.black / Colors.deepPurple: Predefined Material color palette constants.
            - const Color(0xFF000000): Hexadecimal notation (0xAARRGGBB - Alpha, Red, Green, Blue).
            - Color.fromRGBO(0, 0, 0, 1.0): Values using Red, Green, Blue (0-255) and Opacity (0.0 - 1.0).
            - Colors.transparent: Completely clear/invisible background.
            */

            // ------------------------------------------
            // 1.2 BORDER RADIUS PROPERTY
            // ------------------------------------------
            // borderRadius: Rounds the corners of the container (works only with BoxShape.rectangle).
            borderRadius: BorderRadius.circular(100),
            /*
            Other ways to define borderRadius:
            - BorderRadius.all(Radius.circular(20)): Applies a uniform circular radius to all 4 corners.
            - BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)): Customizes individual corners.
            - BorderRadius.vertical(top: Radius.circular(20), bottom: Radius.circular(10)): Customizes top or bottom pairs together.
            - BorderRadius.horizontal(left: Radius.circular(20), right: Radius.circular(10)): Customizes left or right pairs together.
            - BorderRadius.zero: Disables rounding (sharp 90-degree rectangle corners).
            - Radius.elliptical(x, y): Creates oval/elliptical corners instead of circular.
            */

            // ------------------------------------------
            // 1.3 BORDER PROPERTY
            // ------------------------------------------
            // border: Draws an outline stroke along the boundaries of the container.
            border: Border.all(
              color: const Color.fromARGB(255, 255, 255, 255),
              width: 5,
            ),
            /*
            Other ways to define border:
            - Border.all(color: Colors.white, width: 2, style: BorderStyle.solid): Uniform border on all 4 sides.
            - Border(top: BorderSide(color: Colors.red, width: 2), bottom: BorderSide(color: Colors.blue, width: 4)): Specific styling per side.
            - Border.symmetric(vertical: BorderSide(width: 2), horizontal: BorderSide(width: 1)): Symmetrical borders (top/bottom & left/right).
            - BorderSide.none: Removes/omits a border side.
            */

            // ------------------------------------------
            // 1.4 BOX SHADOW PROPERTY
            // ------------------------------------------
            // boxShadow: A list of shadows cast behind the container to create depth and elevation.
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 255, 255, 255), // Shadow color and opacity
                blurRadius: 10,   // Controls softness of shadow blur (higher value = softer, more dispersed)
                spreadRadius: 5,  // Expands the size of shadow before blur is applied
                offset: Offset(10, 10), // Shifts shadow position horizontally (X) and vertically (Y)
                // blurStyle: BlurStyle.normal, // Other styles: BlurStyle.solid, BlurStyle.outer, BlurStyle.inner
              ),
              // You can add multiple BoxShadow items inside this list to stack multiple shadows!
            ],

            /*
            ------------------------------------------
            OTHER AVAILABLE PROPERTIES INSIDE BoxDecoration:
            ------------------------------------------
            - shape: BoxShape.rectangle (default) or BoxShape.circle (creates a perfect circle; borderRadius must NOT be used).
            - gradient: LinearGradient(colors: [Colors.blue, Colors.purple]) / RadialGradient / SweepGradient (draws smooth color blends).
            - image: DecorationImage(image: AssetImage('path') or NetworkImage('url'), fit: BoxFit.cover) (sets a background image).
            - backgroundBlendMode: BlendMode.multiply (controls how color/gradient blends with the background).
            */
          ),

          // ==========================================
          // 2. WIDTH & HEIGHT PROPERTIES
          // ==========================================
          // width: Sets the horizontal size of the container in logical pixels.
          width: 400,
          // height: Sets the vertical size of the container in logical pixels.
          height: 400,
          /*
          Other ways to specify width & height:
          - double.infinity: Expands the container to take all available space provided by the parent.
          - MediaQuery.of(context).size.width * 0.8: Responsive sizing relative to device screen width (e.g. 80%).
          - null: Allows the container to shrink-wrap its child (size to fit content) or follow parent constraints.
          */

          // ==========================================
          // 3. ALIGNMENT PROPERTY
          // ==========================================
          // alignment: Positions the child widget INSIDE the container (does not position the container itself).
          alignment: Alignment.center,
          /*
          Other ways to define alignment:
          - Predefined positions:
              Alignment.topLeft,    Alignment.topCenter,    Alignment.topRight
              Alignment.centerLeft, Alignment.center,       Alignment.centerRight
              Alignment.bottomLeft, Alignment.bottomCenter, Alignment.bottomRight
          - Custom coordinates: Alignment(x, y) where (-1.0, -1.0) is top-left, (0.0, 0.0) is center, and (1.0, 1.0) is bottom-right.
          - FractionalOffset(dx, dy): Coordinates ranging from (0.0, 0.0) at top-left to (1.0, 1.0) at bottom-right.
          - AlignmentDirectional.topStart / AlignmentDirectional.centerEnd: Supports RTL/LTR layouts automatically.
          */

          // ==========================================
          // 4. PADDING PROPERTY
          // ==========================================
          // padding: Empty space inside the container border, between the container and its child.
          padding: const EdgeInsets.only(
            top: 100,
            left: 50,
            right: 50,
            bottom: 100,
          ),
          /*
          Other ways to define padding (EdgeInsets):
          - EdgeInsets.all(20): Adds equal space on all 4 sides.
          - EdgeInsets.symmetric(vertical: 20, horizontal: 10): Symmetrical space for vertical (top/bottom) and horizontal (left/right).
          - EdgeInsets.fromLTRB(10, 20, 30, 40): Distinct space in order: Left, Top, Right, Bottom.
          - EdgeInsetsDirectional.only(start: 20, end: 10): Uses start/end instead of left/right for RTL/LTR support.
          - EdgeInsets.zero: Completely removes all padding.
          */

          // ==========================================
          // 5. MARGIN PROPERTY
          // ==========================================
          // margin: Empty space OUTSIDE the container border, separating it from surrounding widgets.
          margin: const EdgeInsets.all(50),
          /*
          Other ways to define margin:
          - Uses the exact same EdgeInsets constructors as padding:
              EdgeInsets.all(value)
              EdgeInsets.symmetric(vertical: y, horizontal: x)
              EdgeInsets.only(top: t, bottom: b, left: l, right: r)
              EdgeInsets.fromLTRB(l, t, r, b)
          */

          /*
          ==========================================
          OTHER AVAILABLE PROPERTIES INSIDE Container:
          ==========================================
          - constraints: BoxConstraints(minWidth: 100, maxWidth: 300, minHeight: 50, maxHeight: 200) -> Enforces min/max size limits.
          - transform: Matrix4.rotationZ(0.1) -> Applies 2D/3D transformations (rotation, scale, translation, skew).
          - transformAlignment: Alignment.center -> Sets the anchor/pivot point around which the transform occurs.
          - clipBehavior: Clip.antiAlias / Clip.hardEdge -> Clips child content overflowing rounded container borders.
          - color: Colors.blue -> Sets background color ONLY when 'decoration' is NOT used.
          */

          // ==========================================
          // 6. CHILD PROPERTY
          // ==========================================
          // child: The widget placed inside the container.
          child: Text(
            "Ahmed Tamer",
            // style: Controls visual appearance of text (font, size, weight, color, decorations).
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255), // Text color
              fontSize: 40,                                     // Font size in logical pixels
              fontWeight: FontWeight.bold,                      // Thickness: FontWeight.w100 to w900, bold, normal
              /*
              Other useful properties inside TextStyle:
              - fontStyle: FontStyle.italic / FontStyle.normal -> Controls whether text is slanted/italicized.
              - letterSpacing: 2.0 -> Space between individual characters.
              - wordSpacing: 5.0 -> Space between words.
              - fontFamily: 'Roboto' -> Custom font family declared in pubspec.yaml.
              - decoration: TextDecoration.underline / lineThrough / overline -> Adds lines under/through text.
              - decorationColor: Colors.red -> Color of the decoration line.
              - decorationStyle: TextDecorationStyle.dashed / dotted / double -> Pattern of the line.
              - height: 1.5 -> Line height multiplier (line spacing).
              - shadows: [Shadow(color: Colors.black, blurRadius: 2, offset: Offset(1, 1))] -> Shadow for text.
              */
            ),
          ),
        ),
      ),
    );
  }
}


