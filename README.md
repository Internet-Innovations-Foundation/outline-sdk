## Outline SDK Fork for iOS and Android

[![](https://jitpack.io/v/r-mobile/outline_sdk.svg)](https://jitpack.io/#r-mobile/outline_sdk)

This repository contains Outline SDK packages for Android and iOS 15+, gomobile built from the [fork](https://github.com/joeface/outline-sdk) of the [Outline MobileProxy](https://github.com/Jigsaw-Code/outline-sdk/tree/main/x/mobileproxy).

You can build these libraries using the instructions from the [Outline](https://github.com/Jigsaw-Code/outline-sdk/tree/main/x/mobileproxy#build-the-mobileproxy-libraries-for-android-and-ios) source code. 

Packages in this repo use [SmartDialer](https://github.com/Jigsaw-Code/outline-sdk/tree/main/x/smart) functionality to establish a local (on the mobile) proxy to gain access to censored resources. See [SmartProxy](https://github.com/Internet-Innovations-Foundation/SmartProxy#installation) repo for a demo video streaming app for Android that relies on this library.

## Extra Debugging Features 
This SDK build [implements](https://github.com/joeface/outline-sdk/blob/main/x/mobileproxy/stream_dialer.go) custom **SetTLSTransportStrategy** and **GetTLSTransportStrategy** method for **smartDialerOptions**, that allows to access selected TLS strategy by the SmartDialer. See the usage examples below.

## Integration

### On iOS 
Adding the framework to your Xcode project:
- Open your app in Xcode.
- Go to: File > Add Packages Dependencies.
- Enter repo URL (e.g. https://github.com/Internet-Innovations-Foundation/outline-sdk).
- Select Outline MobileProxy and add it to your target.
- The framework will be downloaded, linked, and signed automatically.

```
// Init **StreamDialer** via **NewSmartDialerOptions**:
// Create SmartDialerOptions instance to run against testDomains and strategies config (yaml/json)
guard let smartDialerOptions = MobileproxyNewSmartDialerOptions(testDomains, config)

do {
	
	// Create new StreamDialer via smartDialerOptions
    let dialer = try smartDialerOptions.newStreamDialer()
    print("✅ StreamDialer created successfully")

    // Log winning TLS strategy
    print("TLS Transport: " + smartDialerOptions.getTLSTransportStrategy())

    // Start the proxy server
    startProxy()

} catch {

    print("❌ Failed to create StreamDialer: \(error)")
    return
}
```

### On Android

Installation instructions for Android you may find in [SmartProxy](https://github.com/Internet-Innovations-Foundation/SmartProxy#installation) repo.

```
// Create SmartDialerOptions instance to run against testDomains and strategies config (yaml/json)
streamDialerOptions = Mobileproxy.newSmartDialerOptions(Mobileproxy.newListFromLines(testDomains), jsonConfig) 

// Create new StreamDialer via smartDialerOptions
streamDialer = streamDialerOptions?.newStreamDialer()

// Log winning TLS strategy
Log.d("OUTLINE", streamDialerOptions?.getTLSTransportStrategy().toString())

// Start the proxy server
proxy = Mobileproxy.runProxy("localhost:0", streamDialer)
```