## Outline SDK

[![](https://jitpack.io/v/r-mobile/outline_sdk.svg)](https://jitpack.io/#r-mobile/outline_sdk)

This repository contains an AAR file of the generated mobile proxy from the [outline-sdk](https://github.com/Jigsaw-Code/outline-sdk/tree/main/x/mobileproxy) repository. You can generate this file yourself using the mobileproxy.go file from the [outline-sdk](https://github.com/Jigsaw-Code/outline-sdk/tree/main/x/mobileproxy) repository. A complete guide can be found here. Configuration for this library should be done according to the documentation from the [outline-sdk](https://github.com/Jigsaw-Code/outline-sdk/tree/main/x/mobileproxy) repository.

## Extra Debugging Features 
This SDK build implements **getTLSTransportStrategy** method for **smartDialerOptions**, that returns selected TLS strategy or the fallback by the SmartDialer.

### On iOS 
Init **StreamDialer** via **NewSmartDialerOptions**:

```

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