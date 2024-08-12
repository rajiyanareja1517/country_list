# country_list

A country_list project created in flutter. country_list supports both ios and android, clone the appropriate branches mentioned below:

* For Mobile: https://github.com/rajiyanareja1517/country_list
 

Download or clone this repo by using the link below:

```
https://github.com/rajiyanareja1517/country_list.git
```


```
flutter-app/
|- android
|- assets/
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- model/
|- network/
|- views/
|- utils/
|- main.dart
```

### Views

This directory screens all the screen of the application together in one place. A separate file is created for each type as shown in example below:

```
screens/
|- SplashScreen.dart
|- HomePage.dart
|- CountryDetails.dart
```

### utils

Contains the common file(s) and utilities used in a project. The folder structure is as follows:

```

|- utils/
    |- constants.dart
    

```


### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
import 'package:country_list/views/home_page.dart';
import 'package:country_list/views/splash_screen.dart';
import 'package:flutter/material.dart';

import 'views/country_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SplashScreen(),
        'home_page':(context) => HomePage(),
        'country_details':(context) => CountryDetails(),
      },
    );
  }
}

```
![Screenshot_20240812_120543](https://github.com/user-attachments/assets/6938d2b7-0137-4873-a069-dac2d234e880)
![Screenshot_20240812_120600](https://github.com/user-attachments/assets/e657dfd7-c28c-497c-9193-58854944fa54)
![Screenshot_20240812_120611](https://github.com/user-attachments/assets/fd3e0c6b-f873-4a6d-a18f-2dce3c848cc0)



https://github.com/user-attachments/assets/cc4b0981-a4e7-45c3-99fe-9db754bb1e2a




## Conclusion

Again to note, this is example can appear as my code for what it is - but it is an example only. If you liked my work, don’t forget to ⭐ star the repo to show your support.

