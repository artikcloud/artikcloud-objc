# ACUsersApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserProperties**](ACUsersApi.md#createuserproperties) | **POST** /users/{userId}/properties | Create User Application Properties
[**deleteUserProperties**](ACUsersApi.md#deleteuserproperties) | **DELETE** /users/{userId}/properties | Delete User Application Properties
[**getSelf**](ACUsersApi.md#getself) | **GET** /users/self | Get Current User Profile
[**getUserDeviceTypes**](ACUsersApi.md#getuserdevicetypes) | **GET** /users/{userId}/devicetypes | Get User Device Types
[**getUserDevices**](ACUsersApi.md#getuserdevices) | **GET** /users/{userId}/devices | Get User Devices
[**getUserProperties**](ACUsersApi.md#getuserproperties) | **GET** /users/{userId}/properties | Get User application properties
[**getUserRules**](ACUsersApi.md#getuserrules) | **GET** /users/{userId}/rules | Get User Rules
[**listAllSharesForUser**](ACUsersApi.md#listallsharesforuser) | **GET** in/api/users/{userId}/shares | Get User shares
[**updateUserProperties**](ACUsersApi.md#updateuserproperties) | **PUT** /users/{userId}/properties | Update User Application Properties


# **createUserProperties**
```objc
-(NSURLSessionTask*) createUserPropertiesWithUserId: (NSString*) userId
    properties: (ACAppProperties*) properties
    aid: (NSString*) aid
        completionHandler: (void (^)(ACPropertiesEnvelope* output, NSError* error)) handler;
```

Create User Application Properties

Create application properties for a user

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* userId = @"userId_example"; // User Id
ACAppProperties* properties = [[ACAppProperties alloc] init]; // Properties to be updated
NSString* aid = @"aid_example"; // Application ID (optional)

ACUsersApi*apiInstance = [[ACUsersApi alloc] init];

// Create User Application Properties
[apiInstance createUserPropertiesWithUserId:userId
              properties:properties
              aid:aid
          completionHandler: ^(ACPropertiesEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACUsersApi->createUserProperties: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| User Id | 
 **properties** | [**ACAppProperties***](ACAppProperties*.md)| Properties to be updated | 
 **aid** | **NSString***| Application ID | [optional] 

### Return type

[**ACPropertiesEnvelope***](ACPropertiesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserProperties**
```objc
-(NSURLSessionTask*) deleteUserPropertiesWithUserId: (NSString*) userId
    aid: (NSString*) aid
        completionHandler: (void (^)(ACPropertiesEnvelope* output, NSError* error)) handler;
```

Delete User Application Properties

Deletes a user's application properties

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* userId = @"userId_example"; // User Id
NSString* aid = @"aid_example"; // Application ID (optional)

ACUsersApi*apiInstance = [[ACUsersApi alloc] init];

// Delete User Application Properties
[apiInstance deleteUserPropertiesWithUserId:userId
              aid:aid
          completionHandler: ^(ACPropertiesEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACUsersApi->deleteUserProperties: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| User Id | 
 **aid** | **NSString***| Application ID | [optional] 

### Return type

[**ACPropertiesEnvelope***](ACPropertiesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSelf**
```objc
-(NSURLSessionTask*) getSelfWithCompletionHandler: 
        (void (^)(ACUserEnvelope* output, NSError* error)) handler;
```

Get Current User Profile

Get's the current user's profile

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];



ACUsersApi*apiInstance = [[ACUsersApi alloc] init];

// Get Current User Profile
[apiInstance getSelfWithCompletionHandler: 
          ^(ACUserEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACUsersApi->getSelf: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ACUserEnvelope***](ACUserEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserDeviceTypes**
```objc
-(NSURLSessionTask*) getUserDeviceTypesWithUserId: (NSString*) userId
    offset: (NSNumber*) offset
    count: (NSNumber*) count
    includeShared: (NSNumber*) includeShared
        completionHandler: (void (^)(ACDeviceTypesEnvelope* output, NSError* error)) handler;
```

Get User Device Types

Retrieve User's Device Types

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* userId = @"userId_example"; // User ID.
NSNumber* offset = @56; // Offset for pagination. (optional)
NSNumber* count = @56; // Desired count of items in the result set (optional)
NSNumber* includeShared = @true; // Optional. Boolean (true/false) - If false, only return the user's device types. If true, also return device types shared by other users. (optional)

ACUsersApi*apiInstance = [[ACUsersApi alloc] init];

// Get User Device Types
[apiInstance getUserDeviceTypesWithUserId:userId
              offset:offset
              count:count
              includeShared:includeShared
          completionHandler: ^(ACDeviceTypesEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACUsersApi->getUserDeviceTypes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| User ID. | 
 **offset** | **NSNumber***| Offset for pagination. | [optional] 
 **count** | **NSNumber***| Desired count of items in the result set | [optional] 
 **includeShared** | **NSNumber***| Optional. Boolean (true/false) - If false, only return the user&#39;s device types. If true, also return device types shared by other users. | [optional] 

### Return type

[**ACDeviceTypesEnvelope***](ACDeviceTypesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserDevices**
```objc
-(NSURLSessionTask*) getUserDevicesWithUserId: (NSString*) userId
    offset: (NSNumber*) offset
    count: (NSNumber*) count
    includeProperties: (NSNumber*) includeProperties
    owner: (NSString*) owner
    includeShareInfo: (NSNumber*) includeShareInfo
        completionHandler: (void (^)(ACDevicesEnvelope* output, NSError* error)) handler;
```

Get User Devices

Retrieve User's Devices

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* userId = @"userId_example"; // User ID
NSNumber* offset = @56; // Offset for pagination. (optional)
NSNumber* count = @56; // Desired count of items in the result set (optional)
NSNumber* includeProperties = @true; // Optional. Boolean (true/false) - If false, only return the user's device types. If true, also return device types shared by other users. (optional)
NSString* owner = @"owner_example"; // Return owned and/or shared devices. Default to ALL. (optional)
NSNumber* includeShareInfo = @true; // Include share info (optional)

ACUsersApi*apiInstance = [[ACUsersApi alloc] init];

// Get User Devices
[apiInstance getUserDevicesWithUserId:userId
              offset:offset
              count:count
              includeProperties:includeProperties
              owner:owner
              includeShareInfo:includeShareInfo
          completionHandler: ^(ACDevicesEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACUsersApi->getUserDevices: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| User ID | 
 **offset** | **NSNumber***| Offset for pagination. | [optional] 
 **count** | **NSNumber***| Desired count of items in the result set | [optional] 
 **includeProperties** | **NSNumber***| Optional. Boolean (true/false) - If false, only return the user&#39;s device types. If true, also return device types shared by other users. | [optional] 
 **owner** | **NSString***| Return owned and/or shared devices. Default to ALL. | [optional] 
 **includeShareInfo** | **NSNumber***| Include share info | [optional] 

### Return type

[**ACDevicesEnvelope***](ACDevicesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserProperties**
```objc
-(NSURLSessionTask*) getUserPropertiesWithUserId: (NSString*) userId
    aid: (NSString*) aid
        completionHandler: (void (^)(ACPropertiesEnvelope* output, NSError* error)) handler;
```

Get User application properties

Get application properties of a user

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* userId = @"userId_example"; // User Id
NSString* aid = @"aid_example"; // Application ID (optional)

ACUsersApi*apiInstance = [[ACUsersApi alloc] init];

// Get User application properties
[apiInstance getUserPropertiesWithUserId:userId
              aid:aid
          completionHandler: ^(ACPropertiesEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACUsersApi->getUserProperties: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| User Id | 
 **aid** | **NSString***| Application ID | [optional] 

### Return type

[**ACPropertiesEnvelope***](ACPropertiesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserRules**
```objc
-(NSURLSessionTask*) getUserRulesWithUserId: (NSString*) userId
    excludeDisabled: (NSNumber*) excludeDisabled
    count: (NSNumber*) count
    offset: (NSNumber*) offset
        completionHandler: (void (^)(ACRulesEnvelope* output, NSError* error)) handler;
```

Get User Rules

Retrieve User's Rules

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* userId = @"userId_example"; // User ID.
NSNumber* excludeDisabled = @true; // Exclude disabled rules in the result. (optional)
NSNumber* count = @56; // Desired count of items in the result set. (optional)
NSNumber* offset = @56; // Offset for pagination. (optional)

ACUsersApi*apiInstance = [[ACUsersApi alloc] init];

// Get User Rules
[apiInstance getUserRulesWithUserId:userId
              excludeDisabled:excludeDisabled
              count:count
              offset:offset
          completionHandler: ^(ACRulesEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACUsersApi->getUserRules: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| User ID. | 
 **excludeDisabled** | **NSNumber***| Exclude disabled rules in the result. | [optional] 
 **count** | **NSNumber***| Desired count of items in the result set. | [optional] 
 **offset** | **NSNumber***| Offset for pagination. | [optional] 

### Return type

[**ACRulesEnvelope***](ACRulesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllSharesForUser**
```objc
-(NSURLSessionTask*) listAllSharesForUserWithUserId: (NSString*) userId
    filter: (NSString*) filter
    count: (NSNumber*) count
    offset: (NSNumber*) offset
        completionHandler: (void (^)(ACDeviceSharingEnvelope* output, NSError* error)) handler;
```

Get User shares

Get User shares

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* userId = @"userId_example"; // User ID.
NSString* filter = @"filter_example"; // filter
NSNumber* count = @56; // Desired count of items in the result set. (optional)
NSNumber* offset = @56; // Offset for pagination. (optional)

ACUsersApi*apiInstance = [[ACUsersApi alloc] init];

// Get User shares
[apiInstance listAllSharesForUserWithUserId:userId
              filter:filter
              count:count
              offset:offset
          completionHandler: ^(ACDeviceSharingEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACUsersApi->listAllSharesForUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| User ID. | 
 **filter** | **NSString***| filter | 
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

# **updateUserProperties**
```objc
-(NSURLSessionTask*) updateUserPropertiesWithUserId: (NSString*) userId
    properties: (ACAppProperties*) properties
    aid: (NSString*) aid
        completionHandler: (void (^)(ACPropertiesEnvelope* output, NSError* error)) handler;
```

Update User Application Properties

Updates application properties of a user

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* userId = @"userId_example"; // User Id
ACAppProperties* properties = [[ACAppProperties alloc] init]; // Properties to be updated
NSString* aid = @"aid_example"; // Application ID (optional)

ACUsersApi*apiInstance = [[ACUsersApi alloc] init];

// Update User Application Properties
[apiInstance updateUserPropertiesWithUserId:userId
              properties:properties
              aid:aid
          completionHandler: ^(ACPropertiesEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACUsersApi->updateUserProperties: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***| User Id | 
 **properties** | [**ACAppProperties***](ACAppProperties*.md)| Properties to be updated | 
 **aid** | **NSString***| Application ID | [optional] 

### Return type

[**ACPropertiesEnvelope***](ACPropertiesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

