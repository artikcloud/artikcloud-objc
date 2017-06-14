# ACSubscriptionsApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSubscription**](ACSubscriptionsApi.md#createsubscription) | **POST** /subscriptions | Create Subscription
[**deleteSubscription**](ACSubscriptionsApi.md#deletesubscription) | **DELETE** /subscriptions/{subId} | Delete Subscription
[**getAllSubscriptions**](ACSubscriptionsApi.md#getallsubscriptions) | **GET** /subscriptions | Get All Subscriptions
[**getMessages**](ACSubscriptionsApi.md#getmessages) | **GET** /notifications/{notifId}/messages | Get Messages
[**getSubscription**](ACSubscriptionsApi.md#getsubscription) | **GET** /subscriptions/{subId} | Get Subscription
[**validateSubscription**](ACSubscriptionsApi.md#validatesubscription) | **POST** /subscriptions/{subId}/validate | Validate Subscription


# **createSubscription**
```objc
-(NSURLSessionTask*) createSubscriptionWithSubscriptionInfo: (ACSubscriptionInfo*) subscriptionInfo
        completionHandler: (void (^)(ACSubscriptionEnvelope* output, NSError* error)) handler;
```

Create Subscription

Create Subscription

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


ACSubscriptionInfo* subscriptionInfo = [[ACSubscriptionInfo alloc] init]; // Subscription details

ACSubscriptionsApi*apiInstance = [[ACSubscriptionsApi alloc] init];

// Create Subscription
[apiInstance createSubscriptionWithSubscriptionInfo:subscriptionInfo
          completionHandler: ^(ACSubscriptionEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACSubscriptionsApi->createSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionInfo** | [**ACSubscriptionInfo***](ACSubscriptionInfo*.md)| Subscription details | 

### Return type

[**ACSubscriptionEnvelope***](ACSubscriptionEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSubscription**
```objc
-(NSURLSessionTask*) deleteSubscriptionWithSubId: (NSString*) subId
        completionHandler: (void (^)(ACSubscriptionEnvelope* output, NSError* error)) handler;
```

Delete Subscription

Delete Subscription

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subId = @"subId_example"; // Subscription ID.

ACSubscriptionsApi*apiInstance = [[ACSubscriptionsApi alloc] init];

// Delete Subscription
[apiInstance deleteSubscriptionWithSubId:subId
          completionHandler: ^(ACSubscriptionEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACSubscriptionsApi->deleteSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subId** | **NSString***| Subscription ID. | 

### Return type

[**ACSubscriptionEnvelope***](ACSubscriptionEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSubscriptions**
```objc
-(NSURLSessionTask*) getAllSubscriptionsWithUid: (NSString*) uid
    offset: (NSNumber*) offset
    count: (NSNumber*) count
        completionHandler: (void (^)(ACSubscriptionsEnvelope* output, NSError* error)) handler;
```

Get All Subscriptions

Get All Subscriptions

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* uid = @"uid_example"; // User ID (optional)
NSNumber* offset = @56; // Offset for pagination. (optional)
NSNumber* count = @56; // Desired count of items in the result set. (optional)

ACSubscriptionsApi*apiInstance = [[ACSubscriptionsApi alloc] init];

// Get All Subscriptions
[apiInstance getAllSubscriptionsWithUid:uid
              offset:offset
              count:count
          completionHandler: ^(ACSubscriptionsEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACSubscriptionsApi->getAllSubscriptions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **NSString***| User ID | [optional] 
 **offset** | **NSNumber***| Offset for pagination. | [optional] 
 **count** | **NSNumber***| Desired count of items in the result set. | [optional] 

### Return type

[**ACSubscriptionsEnvelope***](ACSubscriptionsEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessages**
```objc
-(NSURLSessionTask*) getMessagesWithNotifId: (NSString*) notifId
    offset: (NSNumber*) offset
    count: (NSNumber*) count
    order: (NSString*) order
        completionHandler: (void (^)(ACNotifMessagesResponse* output, NSError* error)) handler;
```

Get Messages

Get Messages

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* notifId = @"notifId_example"; // Notification ID.
NSNumber* offset = @56; // Offset for pagination. (optional)
NSNumber* count = @56; // Desired count of items in the result set. (optional)
NSString* order = @"order_example"; // Sort order of results by ts. Either 'asc' or 'desc'. (optional)

ACSubscriptionsApi*apiInstance = [[ACSubscriptionsApi alloc] init];

// Get Messages
[apiInstance getMessagesWithNotifId:notifId
              offset:offset
              count:count
              order:order
          completionHandler: ^(ACNotifMessagesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACSubscriptionsApi->getMessages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notifId** | **NSString***| Notification ID. | 
 **offset** | **NSNumber***| Offset for pagination. | [optional] 
 **count** | **NSNumber***| Desired count of items in the result set. | [optional] 
 **order** | **NSString***| Sort order of results by ts. Either &#39;asc&#39; or &#39;desc&#39;. | [optional] 

### Return type

[**ACNotifMessagesResponse***](ACNotifMessagesResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscription**
```objc
-(NSURLSessionTask*) getSubscriptionWithSubId: (NSString*) subId
        completionHandler: (void (^)(ACSubscriptionEnvelope* output, NSError* error)) handler;
```

Get Subscription

Get Subscription

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subId = @"subId_example"; // Subscription ID.

ACSubscriptionsApi*apiInstance = [[ACSubscriptionsApi alloc] init];

// Get Subscription
[apiInstance getSubscriptionWithSubId:subId
          completionHandler: ^(ACSubscriptionEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACSubscriptionsApi->getSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subId** | **NSString***| Subscription ID. | 

### Return type

[**ACSubscriptionEnvelope***](ACSubscriptionEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateSubscription**
```objc
-(NSURLSessionTask*) validateSubscriptionWithSubId: (NSString*) subId
    validationCallbackRequest: (ACValidationCallbackInfo*) validationCallbackRequest
        completionHandler: (void (^)(ACSubscriptionEnvelope* output, NSError* error)) handler;
```

Validate Subscription

Validate Subscription

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* subId = @"subId_example"; // Subscription ID.
ACValidationCallbackInfo* validationCallbackRequest = [[ACValidationCallbackInfo alloc] init]; // Subscription validation callback request

ACSubscriptionsApi*apiInstance = [[ACSubscriptionsApi alloc] init];

// Validate Subscription
[apiInstance validateSubscriptionWithSubId:subId
              validationCallbackRequest:validationCallbackRequest
          completionHandler: ^(ACSubscriptionEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACSubscriptionsApi->validateSubscription: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subId** | **NSString***| Subscription ID. | 
 **validationCallbackRequest** | [**ACValidationCallbackInfo***](ACValidationCallbackInfo*.md)| Subscription validation callback request | 

### Return type

[**ACSubscriptionEnvelope***](ACSubscriptionEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

