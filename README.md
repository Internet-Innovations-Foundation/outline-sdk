## Outline SDK

[![](https://jitpack.io/v/r-mobile/outline_sdk.svg)](https://jitpack.io/#r-mobile/outline_sdk)

This repository contains an AAR file of the generated mobile proxy from the [outline-sdk](https://github.com/Jigsaw-Code/outline-sdk/tree/main/x/mobileproxy) repository. You can generate this file yourself using the mobileproxy.go file from the [outline-sdk](https://github.com/Jigsaw-Code/outline-sdk/tree/main/x/mobileproxy) repository. A complete guide can be found here. Configuration for this library should be done according to the documentation from the [outline-sdk](https://github.com/Jigsaw-Code/outline-sdk/tree/main/x/mobileproxy) repository.

## Extra Debugging Features 
This SDK build implements **getTLSTransportStrategy** method for **smartDialerOptions**, that returns selected TLS strategy or the fallback by the SmartDialer.

### On iOS 
Init **StreamDialer** via **NewSmartDialerOptions**:

```
guard let smartDialerOptions = MobileproxyNewSmartDialerOptions(testDomains, yamlConfig)

do {
	
	// Create the Smart StreamDialer

    let dialer = try smartDialerOptions.newStreamDialer()
    print("✅ StreamDialer created successfully")

    // Print selected TLS strategy in console
    print("TLS Transport: " + smartDialerOptions.getTLSTransportStrategy())

    // Start the proxy server
    startProxy()

} catch {

    print("❌ Failed to create StreamDialer: \(error)")
    return
}
```

### On Android
//TODO