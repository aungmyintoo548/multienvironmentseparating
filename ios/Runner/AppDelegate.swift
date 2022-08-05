import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
  // start MethodChannel
    let controller = window.rootViewController as? FlutterViewController
        let flavorChannel = FlutterMethodChannel(name: "flavor", binaryMessenger: controller as! FlutterBinaryMessenger)
        flavorChannel.setMethodCallHandler({ call, result in
            let flavor = Bundle.main.infoDictionary?["Flavor"] as? String
            result(flavor)
        })
  //end MethodChannel
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
