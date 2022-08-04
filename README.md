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
========

1. Go to android/app/src/ 
   Create two Folder "production and staging"

2. Go to firebase console and also create 2 project for staging and production.
   Download google-services.json 


android <br>
    -- app<br>
        -- src<br>
            -- production<br>
                -- google-services.json<br>
            -- staging<br>
                -- google-services.json<br>

