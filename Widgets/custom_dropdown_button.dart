import 'package:flutter/material.dart'; // Importing the necessary library to use Flutter widgets.

class CustomDropDownButtonClass extends StatelessWidget {
  // A custom widget to create a styled dropdown button.
  List<String> values; // A list of items (strings) to be displayed in the dropdown.
  double width; // The width of the dropdown box.

  CustomDropDownButtonClass({required this.values, required this.width}); 
  // Constructor to initialize the `values` and `width`.

  @override
  Widget build(BuildContext context) {
    // Method to define the UI of this widget.
    return Container(
      // A container that provides padding and style for the dropdown button.
      padding: EdgeInsets.symmetric(horizontal: width * 0.05), 
      // Adds horizontal padding, 5% of the width.
      width: width, 
      // The total width of the container is the given width.
      decoration: BoxDecoration(
        // Style the container's background and corners.
        color: Colors.brown, // Set the background color to brown.
        borderRadius: BorderRadius.circular(10), // Rounded corners with a radius of 10.
      ),
      child: DropdownButton(
        // The main dropdown widget.
        value: values.first, 
        // The first item in the `values` list is shown by default.
        onChanged: (_) {}, 
        // A function to handle changes when the user selects an item. 
        // Currently empty, you can customize this based on the app's needs.
        items: values.map(
          // Map over the list of `values` to create a dropdown menu item for each one.
          (e) {
            return DropdownMenuItem<String>(
              value: e, 
              // Set the value of the menu item.
              child: Text(e), 
              // The text shown for this item in the dropdown.
            );
          },
        ).toList(), 
        // Convert the mapped items into a list.
        underline: Container(), 
        // Removes the default underline from the dropdown button.
        dropdownColor: Colors.blueGrey, 
        // Sets the background color of the dropdown list when expanded.
        style: const TextStyle(
          // Style for the text inside the dropdown.
          color: Colors.white, // White text color.
        ),
      ),
    );
  }
}
