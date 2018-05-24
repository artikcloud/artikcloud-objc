# ACDefaultApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserScenes**](ACDefaultApi.md#getuserscenes) | **GET** /users/{uid}/scenes | Get all user scenes


# **getUserScenes**
```objc
-(NSURLSessionTask*) getUserScenesWithUid: (NSString*) uid
    count: (NSString*) count
    offset: (NSString*) offset
        completionHandler: (void (^)(ACScenesEnvelope* output, NSError* error)) handler;
```

Get all user scenes

Get all user scenes

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* uid = @"uid_example"; // User id
NSString* count = @"count_example"; // count (optional)
NSString* offset = @"offset_example"; // offset (optional)

ACDefaultApi*apiInstance = [[ACDefaultApi alloc] init];

// Get all user scenes
[apiInstance getUserScenesWithUid:uid
              count:count
              offset:offset
          completionHandler: ^(ACScenesEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACDefaultApi->getUserScenes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **NSString***| User id | 
 **count** | **NSString***| count | [optional] 
 **offset** | **NSString***| offset | [optional] 

### Return type

[**ACScenesEnvelope***](ACScenesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

