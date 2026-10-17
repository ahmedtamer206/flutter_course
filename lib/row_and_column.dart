import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text("Row & Column Layout"),
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          // Parent container to provide clear boundaries and visualize spacing
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(16.0),

          // =========================================================================
          // COLUMN WIDGET: Arranges children VERTICALLY (top-to-bottom)
          // =========================================================================
          // Axes for Column:
          // - Main Axis  : Vertical   (Y-axis: top <-> bottom)
          // - Cross Axis : Horizontal (X-axis: left <-> right)
          // =========================================================================
          child: Column(
            // ==========================================
            // 1. MAIN AXIS ALIGNMENT (Vertical in Column)
            // ==========================================
            // mainAxisAlignment: Positions children along the primary vertical axis.
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            /*
            All MainAxisAlignment options:
            - MainAxisAlignment.start (default): Packs children at the top.
            - MainAxisAlignment.center: Centers children vertically in the middle.
            - MainAxisAlignment.end: Pushes children to the bottom.
            - MainAxisAlignment.spaceBetween: Maximizes empty space between children (none at the top/bottom edges).
            - MainAxisAlignment.spaceAround: Equal space around each child (half-sized space at top and bottom edges).
            - MainAxisAlignment.spaceEvenly: Completely equal space distributed between and around all children.
            */

            // ==========================================
            // 2. CROSS AXIS ALIGNMENT (Horizontal in Column)
            // ==========================================
            // crossAxisAlignment: Aligns children along the secondary horizontal axis.
            crossAxisAlignment: CrossAxisAlignment.center,
            /*
            All CrossAxisAlignment options:
            - CrossAxisAlignment.center (default): Centers children horizontally.
            - CrossAxisAlignment.start: Aligns children to the leading horizontal edge (left in LTR).
            - CrossAxisAlignment.end: Aligns children to the trailing horizontal edge (right in LTR).
            - CrossAxisAlignment.stretch: Forces all children to expand and take the full available width.
            - CrossAxisAlignment.baseline: Aligns along text baseline (requires textBaseline property; rarely used in Column).
            */

            // ==========================================
            // 3. MAIN AXIS SIZE
            // ==========================================
            // mainAxisSize: Determines how much vertical space the Column should occupy.
            mainAxisSize: MainAxisSize.max,
            /*
            MainAxisSize options:
            - MainAxisSize.max (default): Column expands to occupy the maximum vertical height allowed by the parent.
            - MainAxisSize.min: Column shrink-wraps, taking ONLY the vertical height required by its children.
            */

            // ==========================================
            // 4. VERTICAL DIRECTION
            // ==========================================
            // verticalDirection: Controls the reading and layout order along the vertical axis.
            verticalDirection: VerticalDirection.down,
            /*
            VerticalDirection options:
            - VerticalDirection.down (default): Children are laid out from top to bottom (index 0 at top).
            - VerticalDirection.up: Inverts vertical layout; children are laid out from bottom to top (index 0 at bottom).
            */

            // ==========================================
            // 5. CHILDREN LIST
            // ==========================================
            // children: Ordered list of widgets displayed inside the Column.
            children: [
              // -------------------------------------------------------------
              // Sample Header Widget inside Column
              // -------------------------------------------------------------
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "Column Child 1 (Header)",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              // =========================================================================
              // ROW WIDGET: Arranges children HORIZONTALLY (left-to-right)
              // =========================================================================
              // Axes for Row:
              // - Main Axis  : Horizontal (X-axis: left <-> right)
              // - Cross Axis : Vertical   (Y-axis: top <-> bottom)
              // =========================================================================
              Container(
                height: 140, // Fixed height to clearly observe Row's crossAxisAlignment
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.indigo.shade200, width: 2),
                ),
                child: Row(
                  // ==========================================
                  // 1. MAIN AXIS ALIGNMENT (Horizontal in Row)
                  // ==========================================
                  // mainAxisAlignment: Positions children along the primary horizontal axis.
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  /*
                  All MainAxisAlignment options in Row:
                  - MainAxisAlignment.start (default): Aligns children at the leading edge (left in LTR).
                  - MainAxisAlignment.center: Centers children horizontally.
                  - MainAxisAlignment.end: Pushes children to the trailing edge (right in LTR).
                  - MainAxisAlignment.spaceBetween: Spreads children evenly with no gap at outer left/right edges.
                  - MainAxisAlignment.spaceAround: Even space around children (half gap at left/right edges).
                  - MainAxisAlignment.spaceEvenly: Equal space before, between, and after all children.
                  */

                  // ==========================================
                  // 2. CROSS AXIS ALIGNMENT (Vertical in Row)
                  // ==========================================
                  // crossAxisAlignment: Aligns children along the secondary vertical axis.
                  crossAxisAlignment: CrossAxisAlignment.center,
                  /*
                  All CrossAxisAlignment options in Row:
                  - CrossAxisAlignment.center (default): Centers children vertically.
                  - CrossAxisAlignment.start: Aligns children to the top edge.
                  - CrossAxisAlignment.end: Aligns children to the bottom edge.
                  - CrossAxisAlignment.stretch: Stretches children to fill the full height of the Row.
                  - CrossAxisAlignment.baseline: Aligns children along typographic baseline (requires textBaseline).
                  */

                  // ==========================================
                  // 3. MAIN AXIS SIZE
                  // ==========================================
                  // mainAxisSize: Determines how much horizontal width the Row should take.
                  mainAxisSize: MainAxisSize.max,
                  /*
                  MainAxisSize options:
                  - MainAxisSize.max (default): Row stretches to take the full width available from its parent.
                  - MainAxisSize.min: Row shrink-wraps, occupying only the exact width required by its children.
                  */

                  // ==========================================
                  // 4. TEXT DIRECTION & BASELINE
                  // ==========================================
                  // textDirection: Determines the horizontal reading/layout direction (LTR vs RTL).
                  textDirection: TextDirection.ltr,
                  /*
                  TextDirection options:
                  - TextDirection.ltr (default): Left-to-right (English, Latin, etc.).
                  - TextDirection.rtl: Right-to-left (Arabic, Hebrew, etc. - inverts mainAxisAlignment.start and end).
                  */

                  // textBaseline: Required only when crossAxisAlignment: CrossAxisAlignment.baseline is used.
                  textBaseline: TextBaseline.alphabetic,
                  /*
                  TextBaseline options:
                  - TextBaseline.alphabetic: Aligns glyphs along standard Latin/alphabetic baseline.
                  - TextBaseline.ideographic: Aligns characters along ideographic baseline (e.g., Japanese/Chinese).
                  */

                  // ==========================================
                  // 5. ROW CHILDREN
                  // ==========================================
                  children: [
                    Container(
                      width: 70,
                      height: 50,
                      color: Colors.amber,
                      alignment: Alignment.center,
                      child: const Text("Box 1", style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      width: 70,
                      height: 80,
                      color: Colors.teal,
                      alignment: Alignment.center,
                      child: const Text("Box 2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      width: 70,
                      height: 60,
                      color: Colors.deepOrange,
                      alignment: Alignment.center,
                      child: const Text("Box 3", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              // =========================================================================
              // ESSENTIAL COMPANION WIDGETS USED INSIDE ROW & COLUMN:
              // =========================================================================
              /*
              1. Expanded:
                 - Forces a child widget to expand and fill whatever remaining space is available along the main axis.
                 - Supports 'flex' (integer ratio) to divide remaining space disproportionately among multiple Expanded widgets:
                   Expanded(flex: 2, child: Container(color: Colors.red))   // takes 2/3 of free space
                   Expanded(flex: 1, child: Container(color: Colors.blue))  // takes 1/3 of free space

              2. Flexible:
                 - Similar to Expanded, but by default (fit: FlexFit.loose) it allows the child to be SMALLER than
                   the allocated space if its content doesn't need all of it.
                 - Flexible(fit: FlexFit.tight) is identical to Expanded.

              3. Spacer:
                 - A lightweight shorthand for an empty Expanded widget:
                   Row(children: [Text("Left"), Spacer(), Text("Right")])
                 - Takes all empty space between sibling widgets.

              4. SizedBox:
                 - The standard, cleanest way to add fixed spacing between items:
                   SizedBox(height: 16) inside Column
                   SizedBox(width: 16)  inside Row
              */

              // Demonstration of Expanded & Spacer widgets inside a secondary Row
              Container(
                height: 70,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    // Expanded widget taking 2 flex shares
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 40,
                        color: Colors.purple[100],
                        alignment: Alignment.center,
                        child: const Text("Expanded (flex: 2)", style: TextStyle(fontSize: 12)),
                      ),
                    ),

                    // Fixed spacing between children
                    const SizedBox(width: 10),

                    // Expanded widget taking 1 flex share
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        color: Colors.purple[300],
                        alignment: Alignment.center,
                        child: const Text("flex: 1", style: TextStyle(fontSize: 12, color: Colors.white)),
                      ),
                    ),

                    // Spacer pushes the next widget to the far edge
                    const Spacer(),

                    // Icon at the end
                    const Icon(Icons.star, color: Colors.amber, size: 30),
                  ],
                ),
              ),

              /*
              =========================================================================
              COMMON ERROR & FIX: RenderFlex Overflowed by XXX pixels!
              =========================================================================
              When children in a Row or Column exceed available screen bounds:
              - Solution 1: Wrap Column inside 'SingleChildScrollView' or 'ListView' to make it scrollable.
              - Solution 2: Wrap long Text or wide widgets in 'Expanded' or 'Flexible' so they don't exceed screen width.
              - Solution 3: Use 'Wrap' instead of Row to allow overflowing items to break to the next line.
              =========================================================================
              */
            ],
          ),
        ),
      ),
    );
  }
}
