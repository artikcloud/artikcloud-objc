# ACWhitelistingApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteVdid**](ACWhitelistingApi.md#deletevdid) | **DELETE** /devicetypes/{dtid}/whitelist/{vdid} | Delete a vdid from the devicetype whitelist.
[**deleteWhitelistCertificate**](ACWhitelistingApi.md#deletewhitelistcertificate) | **DELETE** /devicetypes/{dtid}/whitelist/certificates/{cid} | Delete a whitelist certificate associated with a devicetype.
[**enableWhitelist**](ACWhitelistingApi.md#enablewhitelist) | **PUT** /devicetypes/:dtid/whitelist/enable | Enable or disble whitelist feature of a device type
[**getRejectedRowList**](ACWhitelistingApi.md#getrejectedrowlist) | **GET** /devicetypes/{dtid}/whitelist/{uploadId}/rejectedRows | Get the list of rejected rows for an uploaded CSV file.
[**getUploadStatus**](ACWhitelistingApi.md#getuploadstatus) | **GET** /devicetypes/{dtid}/whitelist/{uploadId}/status | Get the status of a uploaded CSV file.
[**getWhitelist**](ACWhitelistingApi.md#getwhitelist) | **GET** /devicetypes/{dtid}/whitelist | Get whitelisted vdids of a device type.
[**getWhitelistCertificate**](ACWhitelistingApi.md#getwhitelistcertificate) | **GET** /devicetypes/{dtid}/whitelist/certificates | Get whitelist certificate of device type.
[**getWhitelistStatus**](ACWhitelistingApi.md#getwhiteliststatus) | **GET** /devicetypes/{dtid}/whitelist/status | Get the status of whitelist feature (enabled/disabled) of a device type.
[**uploadCSV**](ACWhitelistingApi.md#uploadcsv) | **POST** /devicetypes/{dtid}/whitelist | Upload a CSV file related to the Device Type.


# **deleteVdid**
```objc
-(NSURLSessionTask*) deleteVdidWithDtid: (NSString*) dtid
    vdid: (NSString*) vdid
        completionHandler: (void (^)(ACWhitelistEnvelope* output, NSError* error)) handler;
```

Delete a vdid from the devicetype whitelist.

Delete a vdid from the devicetype whitelist.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* dtid = @"dtid_example"; // Device Type ID.
NSString* vdid = @"vdid_example"; // Vendor Device ID.

ACWhitelistingApi*apiInstance = [[ACWhitelistingApi alloc] init];

// Delete a vdid from the devicetype whitelist.
[apiInstance deleteVdidWithDtid:dtid
              vdid:vdid
          completionHandler: ^(ACWhitelistEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACWhitelistingApi->deleteVdid: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **NSString***| Device Type ID. | 
 **vdid** | **NSString***| Vendor Device ID. | 

### Return type

[**ACWhitelistEnvelope***](ACWhitelistEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWhitelistCertificate**
```objc
-(NSURLSessionTask*) deleteWhitelistCertificateWithDtid: (NSString*) dtid
    cid: (NSString*) cid
        completionHandler: (void (^)(ACWhitelistEnvelope* output, NSError* error)) handler;
```

Delete a whitelist certificate associated with a devicetype.

Delete a whitelist certificate associated with a devicetype.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* dtid = @"dtid_example"; // Device Type ID.
NSString* cid = @"cid_example"; // Certificate ID.

ACWhitelistingApi*apiInstance = [[ACWhitelistingApi alloc] init];

// Delete a whitelist certificate associated with a devicetype.
[apiInstance deleteWhitelistCertificateWithDtid:dtid
              cid:cid
          completionHandler: ^(ACWhitelistEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACWhitelistingApi->deleteWhitelistCertificate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **NSString***| Device Type ID. | 
 **cid** | **NSString***| Certificate ID. | 

### Return type

[**ACWhitelistEnvelope***](ACWhitelistEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableWhitelist**
```objc
-(NSURLSessionTask*) enableWhitelistWithDtid: (NSString*) dtid
    deviceTypeUpdateInfo: (ACDeviceTypeUpdateInput*) deviceTypeUpdateInfo
        completionHandler: (void (^)(ACWhitelistEnvelope* output, NSError* error)) handler;
```

Enable or disble whitelist feature of a device type

Enable or disble whitelist feature of a device type

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* dtid = @"dtid_example"; // Device Type ID.
ACDeviceTypeUpdateInput* deviceTypeUpdateInfo = [[ACDeviceTypeUpdateInput alloc] init]; // Device type update input.

ACWhitelistingApi*apiInstance = [[ACWhitelistingApi alloc] init];

// Enable or disble whitelist feature of a device type
[apiInstance enableWhitelistWithDtid:dtid
              deviceTypeUpdateInfo:deviceTypeUpdateInfo
          completionHandler: ^(ACWhitelistEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACWhitelistingApi->enableWhitelist: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **NSString***| Device Type ID. | 
 **deviceTypeUpdateInfo** | [**ACDeviceTypeUpdateInput***](ACDeviceTypeUpdateInput*.md)| Device type update input. | 

### Return type

[**ACWhitelistEnvelope***](ACWhitelistEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRejectedRowList**
```objc
-(NSURLSessionTask*) getRejectedRowListWithDtid: (NSString*) dtid
    uploadId: (NSString*) uploadId
    count: (NSNumber*) count
    offset: (NSNumber*) offset
        completionHandler: (void (^)(ACRejectedCSVRowsEnvelope* output, NSError* error)) handler;
```

Get the list of rejected rows for an uploaded CSV file.

Get the list of rejected rows for an uploaded CSV file.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* dtid = @"dtid_example"; // Device type id related to the uploaded CSV file.
NSString* uploadId = @"uploadId_example"; // Upload id related to the uploaded CSV file.
NSNumber* count = @56; // Max results count. (optional)
NSNumber* offset = @56; // Result starting offset. (optional)

ACWhitelistingApi*apiInstance = [[ACWhitelistingApi alloc] init];

// Get the list of rejected rows for an uploaded CSV file.
[apiInstance getRejectedRowListWithDtid:dtid
              uploadId:uploadId
              count:count
              offset:offset
          completionHandler: ^(ACRejectedCSVRowsEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACWhitelistingApi->getRejectedRowList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **NSString***| Device type id related to the uploaded CSV file. | 
 **uploadId** | **NSString***| Upload id related to the uploaded CSV file. | 
 **count** | **NSNumber***| Max results count. | [optional] 
 **offset** | **NSNumber***| Result starting offset. | [optional] 

### Return type

[**ACRejectedCSVRowsEnvelope***](ACRejectedCSVRowsEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUploadStatus**
```objc
-(NSURLSessionTask*) getUploadStatusWithDtid: (NSString*) dtid
    uploadId: (NSString*) uploadId
        completionHandler: (void (^)(ACUploadStatusEnvelope* output, NSError* error)) handler;
```

Get the status of a uploaded CSV file.

Get the status of a uploaded CSV file.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* dtid = @"dtid_example"; // Device type id related to the uploaded CSV file.
NSString* uploadId = @"uploadId_example"; // Upload id related to the uploaded CSV file.

ACWhitelistingApi*apiInstance = [[ACWhitelistingApi alloc] init];

// Get the status of a uploaded CSV file.
[apiInstance getUploadStatusWithDtid:dtid
              uploadId:uploadId
          completionHandler: ^(ACUploadStatusEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACWhitelistingApi->getUploadStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **NSString***| Device type id related to the uploaded CSV file. | 
 **uploadId** | **NSString***| Upload id related to the uploaded CSV file. | 

### Return type

[**ACUploadStatusEnvelope***](ACUploadStatusEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWhitelist**
```objc
-(NSURLSessionTask*) getWhitelistWithDtid: (NSString*) dtid
    count: (NSNumber*) count
    offset: (NSNumber*) offset
        completionHandler: (void (^)(ACWhitelistResultEnvelope* output, NSError* error)) handler;
```

Get whitelisted vdids of a device type.

Get whitelisted vdids of a device type.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* dtid = @"dtid_example"; // Device Type ID.
NSNumber* count = @56; // Max results count. (optional)
NSNumber* offset = @56; // Result starting offset. (optional)

ACWhitelistingApi*apiInstance = [[ACWhitelistingApi alloc] init];

// Get whitelisted vdids of a device type.
[apiInstance getWhitelistWithDtid:dtid
              count:count
              offset:offset
          completionHandler: ^(ACWhitelistResultEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACWhitelistingApi->getWhitelist: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **NSString***| Device Type ID. | 
 **count** | **NSNumber***| Max results count. | [optional] 
 **offset** | **NSNumber***| Result starting offset. | [optional] 

### Return type

[**ACWhitelistResultEnvelope***](ACWhitelistResultEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWhitelistCertificate**
```objc
-(NSURLSessionTask*) getWhitelistCertificateWithDtid: (NSString*) dtid
        completionHandler: (void (^)(ACCertificateEnvelope* output, NSError* error)) handler;
```

Get whitelist certificate of device type.

Get whitelist certificate of device type.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* dtid = @"dtid_example"; // Device Type ID.

ACWhitelistingApi*apiInstance = [[ACWhitelistingApi alloc] init];

// Get whitelist certificate of device type.
[apiInstance getWhitelistCertificateWithDtid:dtid
          completionHandler: ^(ACCertificateEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACWhitelistingApi->getWhitelistCertificate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **NSString***| Device Type ID. | 

### Return type

[**ACCertificateEnvelope***](ACCertificateEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWhitelistStatus**
```objc
-(NSURLSessionTask*) getWhitelistStatusWithDtid: (NSString*) dtid
        completionHandler: (void (^)(ACWhitelistEnvelope* output, NSError* error)) handler;
```

Get the status of whitelist feature (enabled/disabled) of a device type.

Get the status of whitelist feature (enabled/disabled) of a device type.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* dtid = @"dtid_example"; // Device Type ID.

ACWhitelistingApi*apiInstance = [[ACWhitelistingApi alloc] init];

// Get the status of whitelist feature (enabled/disabled) of a device type.
[apiInstance getWhitelistStatusWithDtid:dtid
          completionHandler: ^(ACWhitelistEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACWhitelistingApi->getWhitelistStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **NSString***| Device Type ID. | 

### Return type

[**ACWhitelistEnvelope***](ACWhitelistEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadCSV**
```objc
-(NSURLSessionTask*) uploadCSVWithDtid: (NSString*) dtid
    file: (NSData*) file
        completionHandler: (void (^)(ACUploadIdEnvelope* output, NSError* error)) handler;
```

Upload a CSV file related to the Device Type.

Upload a CSV file related to the Device Type.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* dtid = @"dtid_example"; // Device Type ID.
NSData* file = 1234; // Device Type ID.

ACWhitelistingApi*apiInstance = [[ACWhitelistingApi alloc] init];

// Upload a CSV file related to the Device Type.
[apiInstance uploadCSVWithDtid:dtid
              file:file
          completionHandler: ^(ACUploadIdEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACWhitelistingApi->uploadCSV: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dtid** | **NSString***| Device Type ID. | 
 **file** | **NSData***| Device Type ID. | 

### Return type

[**ACUploadIdEnvelope***](ACUploadIdEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

