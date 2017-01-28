---
title: bmr-notifsAppDelegate
completion-scope: All
summary: Required functions and logic to handle notifications in the app delegate
---
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        // REQUIRED ---> import UserNotifications

        //        In iOS 8 and later, apps that use either local or remote notifications must register the types of user interactions the app supports. Apps can ask to badge icons, display alert messages, or play sounds. When you request any of these interaction types, the system checks the types of interactions the user has allowed for your app. If the user has disallowed a particular type of interaction, the system ignores attempts to interact with the user in that way.

        //        The user can change the notification settings for your app at any time using the Settings app. Because settings can change, always call the registerUserNotificationSettings: at launch time and use the application:didRegisterUserNotificationSettings: method to get the response.

        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert]) { (granted, error) in
            //TODO: process to match your app logic
        }
        application.registerForRemoteNotifications()
        return true
    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {

        let deviceTokenString = deviceToken.reduce("", {$0 + String(format: "%02X", $1)})
        print(deviceTokenString)

        //TODO: forward token to your servers
    }

    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print("Error registering for remote notifications \(error)")
    }
