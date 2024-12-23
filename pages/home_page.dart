import 'package:flutter/material.dart'; // Importing tools to build the UI components for the app.
import 'package:flutter_application_1/widgets/custom_dropdown_button.dart'; // Importing a custom widget for dropdown buttons.

class Homepage extends StatelessWidget {
  // A stateless widget for a single screen or page of the app.
  late double _deviceHeight, _deviceWidth; // Variables to store the screen height and width.

  Homepage({Key? key}) : super(key: key); // Constructor to initialize this widget, optionally with a key.

  @override
  Widget build(BuildContext context) {
    // Called when the widget is built.
    _deviceHeight = MediaQuery.of(context).size.height; // Get the screen height.
    _deviceWidth = MediaQuery.of(context).size.width; // Get the screen width.

    return Scaffold(
      // Creates the basic layout structure for the page.
      body: SafeArea(
        // Ensures content doesn't overlap with system UI like notches or status bars.
        child: Container(
          // A container to hold and organize widgets inside.
          height: _deviceHeight, // Takes the full height of the screen.
          width: _deviceWidth, // Takes the full width of the screen.
          padding: EdgeInsets.symmetric(
            // Adds padding around the container.
            horizontal: _deviceWidth * 0.05, // 5% padding on the left and right.
            vertical: _deviceHeight * 0.05, // 5% padding on the top and bottom.
          ),
          child: Stack(
            // Stack allows widgets to overlap one another.
            children: [
              Column(
                // A vertical layout for arranging widgets one below the other.
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Evenly space widgets vertically.
                mainAxisSize: MainAxisSize.max, // Column takes up as much space as possible.
                crossAxisAlignment: CrossAxisAlignment.start, // Align widgets to the left.
                children: [
                  _pagetitle(), // Adds the "GoMoon" title at the top.
                  _bookrideWidget(), // Widget for the booking ride section.
                ],
              ),
              Align(
                // Aligns a child widget inside its parent.
                alignment: Alignment.centerRight, // Places it to the center-right.
                child: _astroimagewidget(), // Widget for displaying an astronaut/moon image.
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pagetitle() {
    // Displays the title "GoMoon".
    return const Text(
      "GoMoon",
      style: TextStyle(
        color: Colors.white, // Text color is white.
        fontSize: 70, // Font size is very large (70).
        fontWeight: FontWeight.w800, // Makes the font very bold.
      ),
    );
  }

  Widget _astroimagewidget() {
    // Widget for showing an image related to space or the moon.
    return Container(
      height: _deviceHeight * 0.50, // Takes up 50% of the screen height.
      width: _deviceWidth * 0.65, // Takes up 65% of the screen width.
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 176, 241, 178), // Light green background.
        image: DecorationImage(
          fit: BoxFit.fill, // Makes the image cover the entire container.
          image: AssetImage(
            "assets/images/FullMoon2010.jpg", // Path to the full moon image.
          ),
        ),
      ),
    );
  }

  Widget _bookrideWidget() {
    // Widget for booking ride details.
    return Container(
      height: _deviceHeight * 0.25, // Occupies 25% of the screen height.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Spaces items evenly vertically.
        mainAxisSize: MainAxisSize.max, // Occupies as much vertical space as possible.
        crossAxisAlignment: CrossAxisAlignment.center, // Centers items horizontally.
        children: [
          _destinationDropDownWidget(), // Dropdown to choose destinations.
          _travellersinformationWidget(), // Section for passenger info and seat class.
          _rideButton(), // Button to book the ride.
        ],
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    // Dropdown to select a destination.
    return CustomDropDownButtonClass(
      values: const [
        'James Web Station',
        'Musk Station',
      ],
      width: _deviceWidth, // Full-width dropdown.
    );
  }

  Widget _travellersinformationWidget() {
    // Widget for passenger details like the number of travelers and seat class.
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Spaces widgets horizontally.
      mainAxisSize: MainAxisSize.max, // Occupies the maximum width possible.
      crossAxisAlignment: CrossAxisAlignment.center, // Aligns items to the center vertically.
      children: [
        CustomDropDownButtonClass(
          // Dropdown to select the number of travelers.
          values: const [
            '1',
            '2',
            '3',
            '4',
            '5',
          ],
          width: _deviceWidth * 0.45, // Width is 45% of the screen.
        ),
        CustomDropDownButtonClass(
          // Dropdown to select the seat class.
          values: const [
            'Economy',
            'Business',
            'First Class',
          ],
          width: _deviceWidth * 0.40, // Width is 40% of the screen.
        ),
      ],
    );
  }

  Widget _rideButton() {
    // Button to finalize the ride booking.
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01), // Small bottom margin for spacing.
      width: _deviceWidth, // Full width of the screen.
      decoration: BoxDecoration(
        color: Colors.white, // White background for the button.
        borderRadius: BorderRadius.circular(10), // Rounded corners.
      ),
      child: MaterialButton(
        onPressed: () {
          // Action to perform when button is clicked.
        },
        child: const Text(
          "Book Ride",
          style: TextStyle(color: Colors.black), // Black text on the button.
        ),
      ),
    );
  }
}

