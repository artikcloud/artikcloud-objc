# ACMlApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createModel**](ACMlApi.md#createmodel) | **POST** /ml/models | Create model
[**deleteModel**](ACMlApi.md#deletemodel) | **DELETE** /ml/models/{modelId} | Delete model
[**getModel**](ACMlApi.md#getmodel) | **GET** /ml/models/{modelId} | Get model
[**getModels**](ACMlApi.md#getmodels) | **GET** /ml/models | Get models
[**predict**](ACMlApi.md#predict) | **POST** /ml/models/{modelId}/predict | Predict


# **createModel**
```objc
-(NSURLSessionTask*) createModelWithBody: (ACCreateModelBody*) body
        completionHandler: (void (^)(ACModelResponseBody* output, NSError* error)) handler;
```

Create model

Create model

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


ACCreateModelBody* body = [[ACCreateModelBody alloc] init]; // Body (optional)

ACMlApi*apiInstance = [[ACMlApi alloc] init];

// Create model
[apiInstance createModelWithBody:body
          completionHandler: ^(ACModelResponseBody* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMlApi->createModel: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ACCreateModelBody***](ACCreateModelBody*.md)| Body | [optional] 

### Return type

[**ACModelResponseBody***](ACModelResponseBody.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteModel**
```objc
-(NSURLSessionTask*) deleteModelWithModelId: (NSString*) modelId
        completionHandler: (void (^)(ACModelResponseBody* output, NSError* error)) handler;
```

Delete model

Delete model

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* modelId = @"modelId_example"; // modelId

ACMlApi*apiInstance = [[ACMlApi alloc] init];

// Delete model
[apiInstance deleteModelWithModelId:modelId
          completionHandler: ^(ACModelResponseBody* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMlApi->deleteModel: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelId** | **NSString***| modelId | 

### Return type

[**ACModelResponseBody***](ACModelResponseBody.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModel**
```objc
-(NSURLSessionTask*) getModelWithModelId: (NSString*) modelId
        completionHandler: (void (^)(ACModelResponseBody* output, NSError* error)) handler;
```

Get model

Get model

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* modelId = @"modelId_example"; // modelId

ACMlApi*apiInstance = [[ACMlApi alloc] init];

// Get model
[apiInstance getModelWithModelId:modelId
          completionHandler: ^(ACModelResponseBody* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMlApi->getModel: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelId** | **NSString***| modelId | 

### Return type

[**ACModelResponseBody***](ACModelResponseBody.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getModels**
```objc
-(NSURLSessionTask*) getModelsWithUid: (NSString*) uid
    count: (NSString*) count
    offset: (NSString*) offset
        completionHandler: (void (^)(ACGetModelsResponseBody* output, NSError* error)) handler;
```

Get models

Get models

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* uid = @"uid_example"; // uid (optional)
NSString* count = @"count_example"; // count (optional)
NSString* offset = @"offset_example"; // offset (optional)

ACMlApi*apiInstance = [[ACMlApi alloc] init];

// Get models
[apiInstance getModelsWithUid:uid
              count:count
              offset:offset
          completionHandler: ^(ACGetModelsResponseBody* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMlApi->getModels: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **NSString***| uid | [optional] 
 **count** | **NSString***| count | [optional] 
 **offset** | **NSString***| offset | [optional] 

### Return type

[**ACGetModelsResponseBody***](ACGetModelsResponseBody.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **predict**
```objc
-(NSURLSessionTask*) predictWithModelId: (NSString*) modelId
    body: (ACPredictBody*) body
        completionHandler: (void (^)(ACPredictResponseBody* output, NSError* error)) handler;
```

Predict

Predict

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* modelId = @"modelId_example"; // modelId
ACPredictBody* body = [[ACPredictBody alloc] init]; // Body (optional)

ACMlApi*apiInstance = [[ACMlApi alloc] init];

// Predict
[apiInstance predictWithModelId:modelId
              body:body
          completionHandler: ^(ACPredictResponseBody* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMlApi->predict: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelId** | **NSString***| modelId | 
 **body** | [**ACPredictBody***](ACPredictBody*.md)| Body | [optional] 

### Return type

[**ACPredictResponseBody***](ACPredictResponseBody.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

