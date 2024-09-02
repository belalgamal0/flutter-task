# **Chat Feature Documentation**

## **Overview**

This README provides a comprehensive overview of the chat feature implemented in this Flutter application, which follows Clean Architecture principles and uses Bloc for state management. The document explains the rationale behind the architectural choices, the assumptions made during development, and potential future enhancements.

## **Why I Used Clean Architecture**

### **1. Separation of Concerns**

Clean Architecture was adopted to ensure a clear separation of concerns across different layers of the application:  
<br>  
- **Domain Layer**: Contains the core business logic and defines the contract for data access. This layer is independent of external libraries, making the core logic stable even if data sources or UI frameworks change.  
<br>  
- **Data Layer**: Implements the contracts defined by the Domain layer and handles data retrieval and storage. It interacts with external data sources like Firebase Firestore, ensuring that data handling is isolated from the business logic.  
<br>  
- **Presentation Layer**: Manages the UI and state of the application using the Bloc pattern, which allows for clear and predictable state management. This layer handles user interactions and responds to events triggered by the user or system.  
<br>  

### **2. Scalability**

Clean Architecture was chosen to ensure scalability. Each layer can evolve independently, enabling the easy addition of new features, such as supporting multiple chat protocols or integrating new data sources, without affecting other parts of the system.  
<br>

### **3. Testability**

By using Clean Architecture, the application becomes highly testable. Unit tests can be written for each layer independently, ensuring that the business logic, data handling, and UI behave as expected without interference from other components.  
<br>  

## **Assumptions Made**

### **1. Database Architecture**

- The chat feature assumes a NoSQL database structure using Firebase Firestore.  
<br>  
- Each chat is stored as a document in a `chats` collection, with a sub-collection for messages.  
<br>  
- A deterministic chat ID is generated based on the participants’ IDs to ensure uniqueness and consistency.  
<br>  

### **2. Chat Functionality**

- The chat is assumed to be real-time, relying on Firebase Firestore's snapshot listeners to update the UI as new messages are received.  
<br>  
- The application assumes that each user can only participate in one-on-one chats (not group chats).  
<br>  
- The UI for the chat feature assumes a simple text-based messaging system without support for multimedia messages (e.g., images, videos).  
<br>  
<br>  
<h1>Enhancements will be made</h1>
<h3>1. Offline Mode and Caching</h3>
Offline Mode: Implement offline mode support to allow users to send and receive messages even when disconnected from the internet. <br>
Caching: Introduce a local caching mechanism to store messages temporarily and sync them with the server when the connection is restored. <br>
<h3>2. Design Patterns</h3>
Factory Pattern: Implement the Factory Design Pattern for handling different account types during the registration process, making the codebase more modular and scalable. <br>
Repository Pattern: Enhance data handling by fully adopting the Repository Pattern in the Data layer, ensuring better separation between data sources and the business logic. <br>
Singleton Pattern: Use the Singleton Pattern for managing global states, ensuring that resources are shared across different parts of the application efficiently. <br>
<h3>3. Enhanced Navigation</h3>
Improve navigation within the application by implementing a more robust routing system. Consider using deep linking and named routes to enhance the user experience and make navigation more intuitive. <br>
<h3>4. Error Handling Services</h3>
Enhance error handling across the application by implementing a centralized error handling service. This will ensure consistent error messaging and handling across different layers of the application, improving the overall reliability and user experience. <br>

## **Instructions to Set Up and Run the Project**

### **1. Prerequisites**

- **Flutter SDK**: Ensure you have Flutter installed. You can follow the instructions on the official [Flutter installation guide](https://flutter.dev/docs/get-started/install) to set up Flutter on your machine.  
<br>  
- **IDE**: Install an IDE like Visual Studio Code or Android Studio, with Flutter and Dart plugins enabled.  
<br>  

### **2. Cloning the Repository**

```bash
git clone https://github.com/belalgamal0/flutter-task
cd flutter-task
