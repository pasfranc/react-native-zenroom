# react-native-zenroom

## Getting started

`$ npm install react-native-zenroom --save`

### Mostly automatic installation

`$ react-native link react-native-zenroom`


## Usage (Android)


Make alterations to the following files:

* `android/settings.gradle`

```gradle
...
include ':react-native-zenroom'
project(':react-native-zenroom').projectDir = new File(settingsDir, '../node_modules/react-native-zenroom/android')
```

* `android/app/build.gradle`

```gradle
...
dependencies {
    ...
    implementation project(':react-native-zenroom')
}
```

* register module (in MainActivity.java)

  * For react-native below 0.19.0 (use `cat ./node_modules/react-native/package.json | grep version`)

```java
import com.zenroom.ReactNativeZenroomPackage;  // <--- import

public class MainActivity extends Activity implements DefaultHardwareBackBtnHandler {

  ......

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    mReactRootView = new ReactRootView(this);

    mReactInstanceManager = ReactInstanceManager.builder()
      .setApplication(getApplication())
      .setBundleAssetName("index.android.bundle")
      .setJSMainModuleName("index.android")
      .addPackage(new MainReactPackage())
      .addPackage(new ReactNativeZenroomPackage())      // <------- add package
      .setUseDeveloperSupport(BuildConfig.DEBUG)
      .setInitialLifecycleState(LifecycleState.RESUMED)
      .build();

    mReactRootView.startReactApplication(mReactInstanceManager, "ExampleRN", null);

    setContentView(mReactRootView);
  }

  ......

}
```

  * For react-native 0.19.0 and higher
```java
import com.zenroom.ReactNativeZenroomPackage; // <------- add package

public class MainActivity extends ReactActivity {
   // ...
    @Override
    protected List<ReactPackage> getPackages() {
      return Arrays.<ReactPackage>asList(
        new MainReactPackage(), // <---- add comma
        new ReactNativeZenroomPackage() // <---------- add package
      );
    }
```

  * For react-native 0.29.0 and higher ( in MainApplication.java )
```java
import com.zenroom.ReactNativeZenroomPackage; // <------- add package

public class MainApplication extends Application implements ReactApplication {
   // ...
    @Override
    protected List<ReactPackage> getPackages() {
      return Arrays.<ReactPackage>asList(
        new MainReactPackage(), // <---- add comma
        new ReactNativeZenroomPackage() // <---------- add package
      );
    }
```


## Usage

```javascript
import { zenroom } from 'react-native-zenroom';

zenroom.execute(contract, JSON.stringify(keys), JSON.stringify(data))
``` 
