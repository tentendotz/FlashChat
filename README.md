FlashChat
=========

This App is the base of what I learned from Dr. Angela Yu @ The App Brewery.

Getting Started
---------------
To build the app, you'll need a `GoogleService-Info.plist` file from the Firebase project.  
You also must enable Firebase Authentication and Cloud Firestore.  
For more information about Firebase, see [https://firebase.google.com/docs](https://firebase.google.com/docs).

### Create Firebase Project
1. Clone this repo, and set your `Bundle Identifier` in the Xcode project. (Some of the files will be red)

1. Create a Firebase project on the [Firebase console](https://console.firebase.google.com).

1. Register the app for your Firebase project using your `Bundle Identifier`.

1. Download the generated `GoogleService-Info.plist` file.  
    Then move it into the root directory and add it to all targets of your Xcode project.

### Enable Firebase Features
5. Enable the `Email/Password` sign-in method of the `Authentication` section in your Firebase project.

1. Create a database of the `Firestore Database` section in your Firebase project.  
    You can select a Security Rule and specify a location for your database at that time.


1. Finally, install the pods from the terminal and open the downloaded `.xcworkspace` file.
    ```
    $ pod install
    ```

Supplementary Information
-------------------------

#### Libraries Used
- [Firebase](https://firebase.google.com/)
- [IQKeyboardManager](https://github.com/hackiftekhar/IQKeyboardManager)

#### Topics Included
- UINavigationController Class
- UITableView Class
- UITextField Class
- XIB file
- CocoaPods
- Firebase Authentication
- Cloud Firestore

___
