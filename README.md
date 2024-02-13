# iPhone Delivery App

## Overview
This iPhone Delivery App is a Flutter-based mobile application designed to facilitate the ordering and delivery of iPhones from various shops. It allows users to browse iPhone models, place orders, and monitor their delivery status in real-time. The app integrates features for viewing detailed information about iPhones, managing shopping carts, and processing orders with real-time updates.

## Features
- **Shop and iPhone Browsing**: Users can explore available iPhone models from different shops, including details like price, ratings, and stock availability.
- **Real-time Order Tracking**: The app provides real-time updates on order status, delivery time, and total cost.
- **Interactive Shopping Cart**: Users can manage their shopping cart, including adding or removing items, and viewing the total cost.
- **User-friendly UI**: A clean and intuitive interface for an enhanced user experience, featuring search functionality, detailed product pages, and easy navigation.

## Technical Details
- **Flutter Framework**: The app is developed using Flutter, ensuring a seamless and responsive user experience across both iOS and Android platforms.
- **Model Classes**: Defines the data structure for `Mobile`, `Order`, `Shop`, and `User` to manage the app's core functionalities.
- **Screens**: Implements various screens for home, shop details, cart, and checkout processes.

### Key Classes
- `Mobile`: Represents an iPhone model with attributes like `imageUrl`, `name`, and `price`.
- `Order`: Manages order details including the shop, selected iPhone, date, and quantity.
- `Shop`: Contains information about the shop, such as `imageUrl`, `name`, `address`, `rating`, and the list of available iPhones (`stock`).
- `User`: Represents a user with attributes for `name`, and lists for `orders` and `cart`.

## Getting Started
1. Clone the repository to your local machine.
2. Ensure you have Flutter installed on your system. If not, follow the installation guide at [Flutter's official documentation](https://flutter.dev/docs/get-started/install).
3. Navigate to the project directory and run `flutter pub get` to install dependencies.
4. Launch the app on an emulator or physical device using `flutter run`.

## Contribution
Feel free to contribute to the development of the iPhone Delivery App. Whether it's bug fixes, feature enhancements, or documentation improvements, all contributions are welcome. Please fork the repository and submit a pull request with your changes.

## License
This project is licensed under the MIT License - see the LICENSE file for details.
