# FlashChat

This App is the base of what I learned from Dr. Angela Yu @ The App Brewery.


## Getting Started
To build the app, you'll need a `GoogleService-Info.plist` file from the Firebase project.
You also must enable Firebase Authentication and Cloud Firestore in the Firebase project.
> For more information, see [https://firebase.google.com/docs](https://firebase.google.com/docs).

### Create Firebase Project
1. Clone this repo and set your `Bundle Identifier` of the app in the Xcode project. (Some of the files will be red)

1. Create a Firebase project on the [Firebase console](https://console.firebase.google.com).  
    To register your app to the Firebase project, use the `Bundle Identifier` from your Xcode project.

1. Download the generated `GoogleService-Info.plist` file.  
    Then move it into the root directory of the Xcode project.

### Enable Firebase Features
4. Enable the `Email/Password` sign-in method of the Authentication section in the Firebase project.

1. Enable the Cloud Firestore of the Firestore Database section in the Firebase project.  
    You can select a Security Rule of Firestore and specify a location for your database at that time.


1. Finally, install the pods from the terminal and open the downloaded `.xcworkspace` file to see your project in the Xcode.
    ```
    $ pod install
    ```

---
