//
//  AppDelegate.swift
//  AutoUITestDemo
//
//  Created by lisilong on 2018/6/13.
//  Copyright © 2018年 lisilong. All rights reserved.
//

import UIKit
import GuidePageView

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "Main") as UIViewController
        window?.backgroundColor = .white
        window?.makeKey()
        window?.makeKeyAndVisible()
        
        let images = ["adImage1.gif", "adImage2.jpg", "adImage3.jpg"]
        let guideView = GuidePageView(images: images, isHiddenSkipBtn: true, loginRegistCompletion: {
            DispatchQueue.main.async {
                let loginVC = LoginViewController()
                if let keyWindow = UIApplication.shared.keyWindow {
                    keyWindow.rootViewController?.present(loginVC, animated: true, completion: nil)
                }
            }
        }) {
            print("进入首页")
        }
        guideView.logtinButton.setTitle("登录/注册", for: .normal)
        guideView.logtinButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        guideView.startButton.setTitle("进入首页", for: .normal)
        guideView.startButton.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        guideView.accessibilityLabel = "Guide_Page_View"
        guideView.logtinButton.accessibilityLabel = "Guide_Login_Btn"
        guideView.startButton.accessibilityLabel  = "Guide_Start_Btn"
        if let keyWindow = UIApplication.shared.keyWindow {
            keyWindow.rootViewController?.view.addSubview(guideView)
        }

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

