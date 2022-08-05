# multienvironmentseparating
Separating multi- environment with firebase

commands
- flutter run --flavor staging
- flutter run --flavor production
- flutter build apk --flavor staging
- flutter build apk --flavor production
- flutter build apk --split-per-abi --flavor staging
- flutter build apk --split-per-abi --flavor production
- flutter build appbundle --flavor staging
- flutter build appbundle --flavor production

Separating 
- [Lab: separating multi environment medium](https://medium.com/@matt.goodson.business/separating-build-environment-configurations-in-flutter-with-firebase-doing-it-the-right-way-c72c3ad3621f)
     
Android 
---------

1. Go to android/app/src/ 
   Create two Folder "production and staging"

2. Go to firebase console and also create 2 project for staging and production.
   Download google-services.json 


<img src="assets/1.png">

3. In main.dart , call Method flavor

```
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getMethodChannel();  // call in main
  runApp(const MyApp());
}

Future<void> getMethodChannel() {
  return const MethodChannel('flavor')
      .invokeMethod<String>('getFlavor')
      .then((String? flavor) {
    print('STARTED WITH FLAVOR $flavor');
    if (flavor == 'production') {
      // add code for production
    } else if (flavor == 'staging') {
      // add code for staging
    }
  }).catchError((error) {
    print(error);
    print('FAILED TO LOAD FLAVOR');
  });
}
```


