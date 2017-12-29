# ACDevicesStatusApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDeviceStatus**](ACDevicesStatusApi.md#getdevicestatus) | **GET** /devices/{deviceId}/status | Get Device Status
[**getDevicesStatus**](ACDevicesStatusApi.md#getdevicesstatus) | **GET** /devices/status | Get Devices Status
[**putDeviceStatus**](ACDevicesStatusApi.md#putdevicestatus) | **PUT** /devices/{deviceId}/status | Update Device Status


# **getDeviceStatus**
```objc
-(NSURLSessionTask*) getDeviceStatusWithDeviceId: (NSString*) deviceId
    includeSnapshot: (NSNumber*) includeSnapshot
    includeSnapshotTimestamp: (NSNumber*) includeSnapshotTimestamp
        completionHandler: (void (^)(ACDeviceStatus* output, NSError* error)) handler;
```

Get Device Status

Get Device Status

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* deviceId = @"deviceId_example"; // Device ID.
NSNumber* includeSnapshot = @true; // Include device snapshot into the response (optional)
NSNumber* includeSnapshotTimestamp = @true; // Include device snapshot timestamp into the response (optional)

ACDevicesStatusApi*apiInstance = [[ACDevicesStatusApi alloc] init];

// Get Device Status
[apiInstance getDeviceStatusWithDeviceId:deviceId
              includeSnapshot:includeSnapshot
              includeSnapshotTimestamp:includeSnapshotTimestamp
          completionHandler: ^(ACDeviceStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACDevicesStatusApi->getDeviceStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **NSString***| Device ID. | 
 **includeSnapshot** | **NSNumber***| Include device snapshot into the response | [optional] 
 **includeSnapshotTimestamp** | **NSNumber***| Include device snapshot timestamp into the response | [optional] 

### Return type

[**ACDeviceStatus***](ACDeviceStatus.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevicesStatus**
```objc
-(NSURLSessionTask*) getDevicesStatusWithDids: (NSString*) dids
    includeSnapshot: (NSNumber*) includeSnapshot
    includeSnapshotTimestamp: (NSNumber*) includeSnapshotTimestamp
        completionHandler: (void (^)(ACDeviceStatusBatch* output, NSError* error)) handler;
```

Get Devices Status

Get Devices Status

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* dids = @"dids_example"; // List of device ids (comma-separated) for which the statuses are requested.
NSNumber* includeSnapshot = @true; // Include device snapshot into the response (optional)
NSNumber* includeSnapshotTimestamp = @true; // Include device snapshot timestamp into the response (optional)

ACDevicesStatusApi*apiInstance = [[ACDevicesStatusApi alloc] init];

// Get Devices Status
[apiInstance getDevicesStatusWithDids:dids
              includeSnapshot:includeSnapshot
              includeSnapshotTimestamp:includeSnapshotTimestamp
          completionHandler: ^(ACDeviceStatusBatch* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACDevicesStatusApi->getDevicesStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dids** | **NSString***| List of device ids (comma-separated) for which the statuses are requested. | 
 **includeSnapshot** | **NSNumber***| Include device snapshot into the response | [optional] 
 **includeSnapshotTimestamp** | **NSNumber***| Include device snapshot timestamp into the response | [optional] 

### Return type

[**ACDeviceStatusBatch***](ACDeviceStatusBatch.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putDeviceStatus**
```objc
-(NSURLSessionTask*) putDeviceStatusWithDeviceId: (NSString*) deviceId
    body: (ACDeviceStatusPut*) body
        completionHandler: (void (^)(ACDeviceStatus* output, NSError* error)) handler;
```

Update Device Status

Update Device Status

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* deviceId = @"deviceId_example"; // Device ID.
ACDeviceStatusPut* body = [[ACDeviceStatusPut alloc] init]; // Body (optional)

ACDevicesStatusApi*apiInstance = [[ACDevicesStatusApi alloc] init];

// Update Device Status
[apiInstance putDeviceStatusWithDeviceId:deviceId
              body:body
          completionHandler: ^(ACDeviceStatus* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACDevicesStatusApi->putDeviceStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **NSString***| Device ID. | 
 **body** | [**ACDeviceStatusPut***](ACDeviceStatusPut*.md)| Body | [optional] 

### Return type

[**ACDeviceStatus***](ACDeviceStatus.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

