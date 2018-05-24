# ACScenesApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createScene**](ACScenesApi.md#createscene) | **POST** /scenes | Create a new scene
[**getScene**](ACScenesApi.md#getscene) | **GET** /scenes/{sceneId} | Get a scene
[**getScenes**](ACScenesApi.md#getscenes) | **GET** /scenes | Get all user scenes
[**scenesSceneIdDelete**](ACScenesApi.md#scenessceneiddelete) | **DELETE** /scenes/{sceneId} | Delete a scene
[**triggerScene**](ACScenesApi.md#triggerscene) | **POST** /scenes/{sceneId} | Trigger a scene
[**updateScene**](ACScenesApi.md#updatescene) | **PUT** /scenes/{sceneId} | Update a scene


# **createScene**
```objc
-(NSURLSessionTask*) createSceneWithBody: (ACSceneCreationInfo*) body
        completionHandler: (void (^)(ACSceneEnvelope* output, NSError* error)) handler;
```

Create a new scene

Create a new scene

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


ACSceneCreationInfo* body = [[ACSceneCreationInfo alloc] init]; // Body

ACScenesApi*apiInstance = [[ACScenesApi alloc] init];

// Create a new scene
[apiInstance createSceneWithBody:body
          completionHandler: ^(ACSceneEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACScenesApi->createScene: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ACSceneCreationInfo***](ACSceneCreationInfo*.md)| Body | 

### Return type

[**ACSceneEnvelope***](ACSceneEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScene**
```objc
-(NSURLSessionTask*) getSceneWithSceneId: (NSString*) sceneId
        completionHandler: (void (^)(ACSceneEnvelope* output, NSError* error)) handler;
```

Get a scene

Get a scene

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* sceneId = @"sceneId_example"; // Scene id

ACScenesApi*apiInstance = [[ACScenesApi alloc] init];

// Get a scene
[apiInstance getSceneWithSceneId:sceneId
          completionHandler: ^(ACSceneEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACScenesApi->getScene: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sceneId** | **NSString***| Scene id | 

### Return type

[**ACSceneEnvelope***](ACSceneEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScenes**
```objc
-(NSURLSessionTask*) getScenesWithCount: (NSString*) count
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


NSString* count = @"count_example"; // count (optional)
NSString* offset = @"offset_example"; // offset (optional)

ACScenesApi*apiInstance = [[ACScenesApi alloc] init];

// Get all user scenes
[apiInstance getScenesWithCount:count
              offset:offset
          completionHandler: ^(ACScenesEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACScenesApi->getScenes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **scenesSceneIdDelete**
```objc
-(NSURLSessionTask*) scenesSceneIdDeleteWithSceneId: (NSString*) sceneId
        completionHandler: (void (^)(ACSceneEnvelope* output, NSError* error)) handler;
```

Delete a scene

Delete a scene

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* sceneId = @"sceneId_example"; // Scene id

ACScenesApi*apiInstance = [[ACScenesApi alloc] init];

// Delete a scene
[apiInstance scenesSceneIdDeleteWithSceneId:sceneId
          completionHandler: ^(ACSceneEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACScenesApi->scenesSceneIdDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sceneId** | **NSString***| Scene id | 

### Return type

[**ACSceneEnvelope***](ACSceneEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerScene**
```objc
-(NSURLSessionTask*) triggerSceneWithSceneId: (NSString*) sceneId
    body: (NSObject*) body
        completionHandler: (void (^)(ACSceneEnvelope* output, NSError* error)) handler;
```

Trigger a scene

Trigger a scene

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* sceneId = @"sceneId_example"; // Scene id
NSObject* body = NULL; // Body

ACScenesApi*apiInstance = [[ACScenesApi alloc] init];

// Trigger a scene
[apiInstance triggerSceneWithSceneId:sceneId
              body:body
          completionHandler: ^(ACSceneEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACScenesApi->triggerScene: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sceneId** | **NSString***| Scene id | 
 **body** | **NSObject***| Body | 

### Return type

[**ACSceneEnvelope***](ACSceneEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateScene**
```objc
-(NSURLSessionTask*) updateSceneWithSceneId: (NSString*) sceneId
    body: (ACSceneCreationInfo*) body
        completionHandler: (void (^)(ACSceneEnvelope* output, NSError* error)) handler;
```

Update a scene

Update a scene

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* sceneId = @"sceneId_example"; // Scene id
ACSceneCreationInfo* body = [[ACSceneCreationInfo alloc] init]; // Body

ACScenesApi*apiInstance = [[ACScenesApi alloc] init];

// Update a scene
[apiInstance updateSceneWithSceneId:sceneId
              body:body
          completionHandler: ^(ACSceneEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACScenesApi->updateScene: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sceneId** | **NSString***| Scene id | 
 **body** | [**ACSceneCreationInfo***](ACSceneCreationInfo*.md)| Body | 

### Return type

[**ACSceneEnvelope***](ACSceneEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

