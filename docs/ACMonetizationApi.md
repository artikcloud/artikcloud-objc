# ACMonetizationApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPricingTiers**](ACMonetizationApi.md#createpricingtiers) | **POST** /pricing/devicetypes/{dtid}/pricingtiers | Define devicetype&#39;s pricing tiers.
[**getPricingTiers**](ACMonetizationApi.md#getpricingtiers) | **GET** /pricing/devices/{did}/pricingtiers | Get a device&#39;s pricing tiers
[**getThePricingTiers**](ACMonetizationApi.md#getthepricingtiers) | **GET** /pricing/devicetypes/{dtid}/pricingtiers | Get devicetype&#39;s pricing tiers.
[**getUpgradePath**](ACMonetizationApi.md#getupgradepath) | **GET** /pricing/devices/{did}/revenueshare/upgradepath | Get upgrade path
[**setPricingTier**](ACMonetizationApi.md#setpricingtier) | **PUT** /pricing/devices/{did}/pricingtiers | Set a device&#39;s pricing tier


# **createPricingTiers**
```objc
-(NSURLSessionTask*) createPricingTiersWithDtid: (NSString*) dtid
    pricingTierInfo: (ACDeviceTypePricingTier*) pricingTierInfo
        completionHandler: (void (^)(ACDeviceTypePricingTier* output, NSError* error)) handler;
```

Define devicetype's pricing tiers.

Define devicetype's pricing tiers.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* dtid = @"dtid_example"; // DeviceType ID
ACDeviceTypePricingTier* pricingTierInfo = [[ACDeviceTypePricingTier alloc] init]; // Pricing tier info

ACMonetizationApi*apiInstance = [[ACMonetizationApi alloc] init];

// Define devicetype's pricing tiers.
[apiInstance createPricingTiersWithDtid:dtid
              pricingTierInfo:pricingTierInfo
          completionHandler: ^(ACDeviceTypePricingTier* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMonetizationApi->createPricingTiers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **NSString***| DeviceType ID | 
 **pricingTierInfo** | [**ACDeviceTypePricingTier***](ACDeviceTypePricingTier*.md)| Pricing tier info | 

### Return type

[**ACDeviceTypePricingTier***](ACDeviceTypePricingTier.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPricingTiers**
```objc
-(NSURLSessionTask*) getPricingTiersWithDid: (NSString*) did
    active: (NSNumber*) active
        completionHandler: (void (^)(ACDevicePricingTiersEnvelope* output, NSError* error)) handler;
```

Get a device's pricing tiers

Get a device's pricing tiers

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* did = @"did_example"; // Device ID
NSNumber* active = @true; // Filter by active (optional)

ACMonetizationApi*apiInstance = [[ACMonetizationApi alloc] init];

// Get a device's pricing tiers
[apiInstance getPricingTiersWithDid:did
              active:active
          completionHandler: ^(ACDevicePricingTiersEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMonetizationApi->getPricingTiers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **did** | **NSString***| Device ID | 
 **active** | **NSNumber***| Filter by active | [optional] 

### Return type

[**ACDevicePricingTiersEnvelope***](ACDevicePricingTiersEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThePricingTiers**
```objc
-(NSURLSessionTask*) getThePricingTiersWithDtid: (NSString*) dtid
    version: (NSNumber*) version
        completionHandler: (void (^)(ACDeviceTypePricingTiersEnvelope* output, NSError* error)) handler;
```

Get devicetype's pricing tiers.

Get devicetype's pricing tiers.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* dtid = @"dtid_example"; // DeviceType ID
NSNumber* version = @56; // Version

ACMonetizationApi*apiInstance = [[ACMonetizationApi alloc] init];

// Get devicetype's pricing tiers.
[apiInstance getThePricingTiersWithDtid:dtid
              version:version
          completionHandler: ^(ACDeviceTypePricingTiersEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMonetizationApi->getThePricingTiers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **NSString***| DeviceType ID | 
 **version** | **NSNumber***| Version | 

### Return type

[**ACDeviceTypePricingTiersEnvelope***](ACDeviceTypePricingTiersEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUpgradePath**
```objc
-(NSURLSessionTask*) getUpgradePathWithDid: (NSString*) did
    action: (NSString*) action
        completionHandler: (void (^)(ACUpgradePathEnvelope* output, NSError* error)) handler;
```

Get upgrade path

Get upgrade path

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* did = @"did_example"; // Device ID
NSString* action = @"action_example"; // Action to perform

ACMonetizationApi*apiInstance = [[ACMonetizationApi alloc] init];

// Get upgrade path
[apiInstance getUpgradePathWithDid:did
              action:action
          completionHandler: ^(ACUpgradePathEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMonetizationApi->getUpgradePath: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **did** | **NSString***| Device ID | 
 **action** | **NSString***| Action to perform | 

### Return type

[**ACUpgradePathEnvelope***](ACUpgradePathEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setPricingTier**
```objc
-(NSURLSessionTask*) setPricingTierWithDid: (NSString*) did
    pricingTier: (ACDevicePricingTierRequest*) pricingTier
        completionHandler: (void (^)(ACDevicePricingTierEnvelope* output, NSError* error)) handler;
```

Set a device's pricing tier

Set a device's pricing tier

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* did = @"did_example"; // Device ID
ACDevicePricingTierRequest* pricingTier = [[ACDevicePricingTierRequest alloc] init]; // Pricing tier

ACMonetizationApi*apiInstance = [[ACMonetizationApi alloc] init];

// Set a device's pricing tier
[apiInstance setPricingTierWithDid:did
              pricingTier:pricingTier
          completionHandler: ^(ACDevicePricingTierEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMonetizationApi->setPricingTier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **did** | **NSString***| Device ID | 
 **pricingTier** | [**ACDevicePricingTierRequest***](ACDevicePricingTierRequest*.md)| Pricing tier | 

### Return type

[**ACDevicePricingTierEnvelope***](ACDevicePricingTierEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

