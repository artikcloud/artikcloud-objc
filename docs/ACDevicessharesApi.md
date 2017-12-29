# ACDevicesSharesApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createShareForDevice**](ACDevicesSharesApi.md#createsharefordevice) | **POST** /devices/{deviceId}/shares | Share a device 
[**deleteSharingForDevice**](ACDevicesSharesApi.md#deletesharingfordevice) | **DELETE** /devices/{deviceId}/shares/{shareId} | Delete specific share of the given device id
[**getAllSharesForDevice**](ACDevicesSharesApi.md#getallsharesfordevice) | **GET** /devices/{deviceId}/shares | List all shares for the given device id
[**getSharingForDevice**](ACDevicesSharesApi.md#getsharingfordevice) | **GET** /devices/{deviceId}/shares/{shareId} | Get specific share of the given device id


# **createShareForDevice**
```objc
-(NSURLSessionTask*) createShareForDeviceWithDeviceId: (NSString*) deviceId
    deviceShareInfo: (ACDeviceShareInfo*) deviceShareInfo
        completionHandler: (void (^)(ACDeviceSharingId* output, NSError* error)) handler;
```

Share a device 

Share a device 

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* deviceId = @"deviceId_example"; // Device ID.
ACDeviceShareInfo* deviceShareInfo = [[ACDeviceShareInfo alloc] init]; // Device object that needs to be added

ACDevicesSharesApi*apiInstance = [[ACDevicesSharesApi alloc] init];

// Share a device 
[apiInstance createShareForDeviceWithDeviceId:deviceId
              deviceShareInfo:deviceShareInfo
          completionHandler: ^(ACDeviceSharingId* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACDevicesSharesApi->createShareForDevice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **NSString***| Device ID. | 
 **deviceShareInfo** | [**ACDeviceShareInfo***](ACDeviceShareInfo*.md)| Device object that needs to be added | 

### Return type

[**ACDeviceSharingId***](ACDeviceSharingId.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSharingForDevice**
```objc
-(NSURLSessionTask*) deleteSharingForDeviceWithDeviceId: (NSString*) deviceId
    shareId: (NSString*) shareId
        completionHandler: (void (^)(ACDeviceSharingId* output, NSError* error)) handler;
```

Delete specific share of the given device id

Delete specific share of the given device id

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* deviceId = @"deviceId_example"; // Device ID.
NSString* shareId = @"shareId_example"; // Share ID.

ACDevicesSharesApi*apiInstance = [[ACDevicesSharesApi alloc] init];

// Delete specific share of the given device id
[apiInstance deleteSharingForDeviceWithDeviceId:deviceId
              shareId:shareId
          completionHandler: ^(ACDeviceSharingId* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACDevicesSharesApi->deleteSharingForDevice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **NSString***| Device ID. | 
 **shareId** | **NSString***| Share ID. | 

### Return type

[**ACDeviceSharingId***](ACDeviceSharingId.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSharesForDevice**
```objc
-(NSURLSessionTask*) getAllSharesForDeviceWithDeviceId: (NSString*) deviceId
    count: (NSNumber*) count
    offset: (NSNumber*) offset
        completionHandler: (void (^)(ACDeviceSharingEnvelope* output, NSError* error)) handler;
```

List all shares for the given device id

List all shares for the given device id

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* deviceId = @"deviceId_example"; // Device ID.
NSNumber* count = @56; // Desired count of items in the result set. (optional)
NSNumber* offset = @56; // Offset for pagination. (optional)

ACDevicesSharesApi*apiInstance = [[ACDevicesSharesApi alloc] init];

// List all shares for the given device id
[apiInstance getAllSharesForDeviceWithDeviceId:deviceId
              count:count
              offset:offset
          completionHandler: ^(ACDeviceSharingEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACDevicesSharesApi->getAllSharesForDevice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **NSString***| Device ID. | 
 **count** | **NSNumber***| Desired count of items in the result set. | [optional] 
 **offset** | **NSNumber***| Offset for pagination. | [optional] 

### Return type

[**ACDeviceSharingEnvelope***](ACDeviceSharingEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSharingForDevice**
```objc
-(NSURLSessionTask*) getSharingForDeviceWithDeviceId: (NSString*) deviceId
    shareId: (NSString*) shareId
        completionHandler: (void (^)(ACDeviceSharing* output, NSError* error)) handler;
```

Get specific share of the given device id

Get specific share of the given device id

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* deviceId = @"deviceId_example"; // Device ID.
NSString* shareId = @"shareId_example"; // Share ID.

ACDevicesSharesApi*apiInstance = [[ACDevicesSharesApi alloc] init];

// Get specific share of the given device id
[apiInstance getSharingForDeviceWithDeviceId:deviceId
              shareId:shareId
          completionHandler: ^(ACDeviceSharing* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACDevicesSharesApi->getSharingForDevice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **NSString***| Device ID. | 
 **shareId** | **NSString***| Share ID. | 

### Return type

[**ACDeviceSharing***](ACDeviceSharing.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

