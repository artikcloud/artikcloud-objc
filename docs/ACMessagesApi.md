# ACMessagesApi

All URIs are relative to *https://api.artik.cloud/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAggregatesHistogram**](ACMessagesApi.md#getaggregateshistogram) | **GET** /messages/analytics/histogram | Get Normalized Message Histogram
[**getFieldPresence**](ACMessagesApi.md#getfieldpresence) | **GET** /messages/presence | Get normalized message presence
[**getLastNormalizedMessages**](ACMessagesApi.md#getlastnormalizedmessages) | **GET** /messages/last | Get Last Normalized Message
[**getMessageAggregates**](ACMessagesApi.md#getmessageaggregates) | **GET** /messages/analytics/aggregates | Get Normalized Message Aggregates
[**getMessageSnapshots**](ACMessagesApi.md#getmessagesnapshots) | **GET** /messages/snapshots | Get Message Snapshots
[**getNormalizedActions**](ACMessagesApi.md#getnormalizedactions) | **GET** /actions | Get Normalized Actions
[**getNormalizedMessages**](ACMessagesApi.md#getnormalizedmessages) | **GET** /messages | Get Normalized Messages
[**sendActions**](ACMessagesApi.md#sendactions) | **POST** /actions | Send Actions
[**sendMessage**](ACMessagesApi.md#sendmessage) | **POST** /messages | Send Message


# **getAggregatesHistogram**
```objc
-(NSURLSessionTask*) getAggregatesHistogramWithStartDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    sdid: (NSString*) sdid
    field: (NSString*) field
    interval: (NSString*) interval
        completionHandler: (void (^)(ACAggregatesHistogramResponse* output, NSError* error)) handler;
```

Get Normalized Message Histogram

Get Histogram on normalized messages.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSNumber* startDate = @789; // Timestamp of earliest message (in milliseconds since epoch).
NSNumber* endDate = @789; // Timestamp of latest message (in milliseconds since epoch).
NSString* sdid = @"sdid_example"; // Source device ID of the messages being searched. (optional)
NSString* field = @"field_example"; // Message field being queried for building histogram. (optional)
NSString* interval = @"interval_example"; // Interval of time for building histogram blocks. (Valid values: minute, hour, day, month, year) (optional)

ACMessagesApi*apiInstance = [[ACMessagesApi alloc] init];

// Get Normalized Message Histogram
[apiInstance getAggregatesHistogramWithStartDate:startDate
              endDate:endDate
              sdid:sdid
              field:field
              interval:interval
          completionHandler: ^(ACAggregatesHistogramResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMessagesApi->getAggregatesHistogram: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSNumber***| Timestamp of earliest message (in milliseconds since epoch). | 
 **endDate** | **NSNumber***| Timestamp of latest message (in milliseconds since epoch). | 
 **sdid** | **NSString***| Source device ID of the messages being searched. | [optional] 
 **field** | **NSString***| Message field being queried for building histogram. | [optional] 
 **interval** | **NSString***| Interval of time for building histogram blocks. (Valid values: minute, hour, day, month, year) | [optional] 

### Return type

[**ACAggregatesHistogramResponse***](ACAggregatesHistogramResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFieldPresence**
```objc
-(NSURLSessionTask*) getFieldPresenceWithStartDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    interval: (NSString*) interval
    sdid: (NSString*) sdid
    fieldPresence: (NSString*) fieldPresence
        completionHandler: (void (^)(ACFieldPresenceEnvelope* output, NSError* error)) handler;
```

Get normalized message presence

Get normalized message presence.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSNumber* startDate = @789; // startDate
NSNumber* endDate = @789; // endDate
NSString* interval = @"interval_example"; // String representing grouping interval. One of: 'minute' (1 hour limit), 'hour' (1 day limit), 'day' (31 days limit), 'month' (1 year limit), or 'year' (10 years limit).
NSString* sdid = @"sdid_example"; // Source device ID of the messages being searched. (optional)
NSString* fieldPresence = @"fieldPresence_example"; // String representing a field from the specified device ID. (optional)

ACMessagesApi*apiInstance = [[ACMessagesApi alloc] init];

// Get normalized message presence
[apiInstance getFieldPresenceWithStartDate:startDate
              endDate:endDate
              interval:interval
              sdid:sdid
              fieldPresence:fieldPresence
          completionHandler: ^(ACFieldPresenceEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMessagesApi->getFieldPresence: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **NSNumber***| startDate | 
 **endDate** | **NSNumber***| endDate | 
 **interval** | **NSString***| String representing grouping interval. One of: &#39;minute&#39; (1 hour limit), &#39;hour&#39; (1 day limit), &#39;day&#39; (31 days limit), &#39;month&#39; (1 year limit), or &#39;year&#39; (10 years limit). | 
 **sdid** | **NSString***| Source device ID of the messages being searched. | [optional] 
 **fieldPresence** | **NSString***| String representing a field from the specified device ID. | [optional] 

### Return type

[**ACFieldPresenceEnvelope***](ACFieldPresenceEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLastNormalizedMessages**
```objc
-(NSURLSessionTask*) getLastNormalizedMessagesWithCount: (NSNumber*) count
    sdids: (NSString*) sdids
    fieldPresence: (NSString*) fieldPresence
        completionHandler: (void (^)(ACNormalizedMessagesEnvelope* output, NSError* error)) handler;
```

Get Last Normalized Message

Get last messages normalized.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSNumber* count = @56; // Number of items to return per query. (optional)
NSString* sdids = @"sdids_example"; // Comma separated list of source device IDs (minimum: 1). (optional)
NSString* fieldPresence = @"fieldPresence_example"; // String representing a field from the specified device ID. (optional)

ACMessagesApi*apiInstance = [[ACMessagesApi alloc] init];

// Get Last Normalized Message
[apiInstance getLastNormalizedMessagesWithCount:count
              sdids:sdids
              fieldPresence:fieldPresence
          completionHandler: ^(ACNormalizedMessagesEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMessagesApi->getLastNormalizedMessages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **NSNumber***| Number of items to return per query. | [optional] 
 **sdids** | **NSString***| Comma separated list of source device IDs (minimum: 1). | [optional] 
 **fieldPresence** | **NSString***| String representing a field from the specified device ID. | [optional] 

### Return type

[**ACNormalizedMessagesEnvelope***](ACNormalizedMessagesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessageAggregates**
```objc
-(NSURLSessionTask*) getMessageAggregatesWithSdid: (NSString*) sdid
    field: (NSString*) field
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
        completionHandler: (void (^)(ACAggregatesResponse* output, NSError* error)) handler;
```

Get Normalized Message Aggregates

Get Aggregates on normalized messages.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* sdid = @"sdid_example"; // Source device ID of the messages being searched.
NSString* field = @"field_example"; // Message field being queried for aggregates.
NSNumber* startDate = @789; // Timestamp of earliest message (in milliseconds since epoch).
NSNumber* endDate = @789; // Timestamp of latest message (in milliseconds since epoch).

ACMessagesApi*apiInstance = [[ACMessagesApi alloc] init];

// Get Normalized Message Aggregates
[apiInstance getMessageAggregatesWithSdid:sdid
              field:field
              startDate:startDate
              endDate:endDate
          completionHandler: ^(ACAggregatesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMessagesApi->getMessageAggregates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sdid** | **NSString***| Source device ID of the messages being searched. | 
 **field** | **NSString***| Message field being queried for aggregates. | 
 **startDate** | **NSNumber***| Timestamp of earliest message (in milliseconds since epoch). | 
 **endDate** | **NSNumber***| Timestamp of latest message (in milliseconds since epoch). | 

### Return type

[**ACAggregatesResponse***](ACAggregatesResponse.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessageSnapshots**
```objc
-(NSURLSessionTask*) getMessageSnapshotsWithSdids: (NSString*) sdids
    includeTimestamp: (NSNumber*) includeTimestamp
        completionHandler: (void (^)(ACSnapshotResponses* output, NSError* error)) handler;
```

Get Message Snapshots

Get message snapshots.

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* sdids = @"sdids_example"; // Device IDs for which the snapshots are requested. Max 100 device ids per call.
NSNumber* includeTimestamp = @true; // Indicates whether to return timestamps of the last update for each field. (optional)

ACMessagesApi*apiInstance = [[ACMessagesApi alloc] init];

// Get Message Snapshots
[apiInstance getMessageSnapshotsWithSdids:sdids
              includeTimestamp:includeTimestamp
          completionHandler: ^(ACSnapshotResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMessagesApi->getMessageSnapshots: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sdids** | **NSString***| Device IDs for which the snapshots are requested. Max 100 device ids per call. | 
 **includeTimestamp** | **NSNumber***| Indicates whether to return timestamps of the last update for each field. | [optional] 

### Return type

[**ACSnapshotResponses***](ACSnapshotResponses.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNormalizedActions**
```objc
-(NSURLSessionTask*) getNormalizedActionsWithUid: (NSString*) uid
    ddid: (NSString*) ddid
    mid: (NSString*) mid
    offset: (NSString*) offset
    count: (NSNumber*) count
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    order: (NSString*) order
        completionHandler: (void (^)(ACNormalizedActionsEnvelope* output, NSError* error)) handler;
```

Get Normalized Actions

Get the actions normalized

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* uid = @"uid_example"; // User ID. If not specified, assume that of the current authenticated user. If specified, it must be that of a user for which the current authenticated user has read access to. (optional)
NSString* ddid = @"ddid_example"; // Destination device ID of the actions being searched. (optional)
NSString* mid = @"mid_example"; // The message ID being searched. (optional)
NSString* offset = @"offset_example"; // A string that represents the starting item, should be the value of 'next' field received in the last response. (required for pagination) (optional)
NSNumber* count = @56; // count (optional)
NSNumber* startDate = @789; // startDate (optional)
NSNumber* endDate = @789; // endDate (optional)
NSString* order = @"order_example"; // Desired sort order: 'asc' or 'desc' (optional)

ACMessagesApi*apiInstance = [[ACMessagesApi alloc] init];

// Get Normalized Actions
[apiInstance getNormalizedActionsWithUid:uid
              ddid:ddid
              mid:mid
              offset:offset
              count:count
              startDate:startDate
              endDate:endDate
              order:order
          completionHandler: ^(ACNormalizedActionsEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMessagesApi->getNormalizedActions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **NSString***| User ID. If not specified, assume that of the current authenticated user. If specified, it must be that of a user for which the current authenticated user has read access to. | [optional] 
 **ddid** | **NSString***| Destination device ID of the actions being searched. | [optional] 
 **mid** | **NSString***| The message ID being searched. | [optional] 
 **offset** | **NSString***| A string that represents the starting item, should be the value of &#39;next&#39; field received in the last response. (required for pagination) | [optional] 
 **count** | **NSNumber***| count | [optional] 
 **startDate** | **NSNumber***| startDate | [optional] 
 **endDate** | **NSNumber***| endDate | [optional] 
 **order** | **NSString***| Desired sort order: &#39;asc&#39; or &#39;desc&#39; | [optional] 

### Return type

[**ACNormalizedActionsEnvelope***](ACNormalizedActionsEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNormalizedMessages**
```objc
-(NSURLSessionTask*) getNormalizedMessagesWithUid: (NSString*) uid
    sdid: (NSString*) sdid
    mid: (NSString*) mid
    fieldPresence: (NSString*) fieldPresence
    filter: (NSString*) filter
    offset: (NSString*) offset
    count: (NSNumber*) count
    startDate: (NSNumber*) startDate
    endDate: (NSNumber*) endDate
    order: (NSString*) order
        completionHandler: (void (^)(ACNormalizedMessagesEnvelope* output, NSError* error)) handler;
```

Get Normalized Messages

Get the messages normalized

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* uid = @"uid_example"; // User ID. If not specified, assume that of the current authenticated user. If specified, it must be that of a user for which the current authenticated user has read access to. (optional)
NSString* sdid = @"sdid_example"; // Source device ID of the messages being searched. (optional)
NSString* mid = @"mid_example"; // The message ID being searched. (optional)
NSString* fieldPresence = @"fieldPresence_example"; // String representing a field from the specified device ID. (optional)
NSString* filter = @"filter_example"; // Filter. (optional)
NSString* offset = @"offset_example"; // A string that represents the starting item, should be the value of 'next' field received in the last response. (required for pagination) (optional)
NSNumber* count = @56; // count (optional)
NSNumber* startDate = @789; // startDate (optional)
NSNumber* endDate = @789; // endDate (optional)
NSString* order = @"order_example"; // Desired sort order: 'asc' or 'desc' (optional)

ACMessagesApi*apiInstance = [[ACMessagesApi alloc] init];

// Get Normalized Messages
[apiInstance getNormalizedMessagesWithUid:uid
              sdid:sdid
              mid:mid
              fieldPresence:fieldPresence
              filter:filter
              offset:offset
              count:count
              startDate:startDate
              endDate:endDate
              order:order
          completionHandler: ^(ACNormalizedMessagesEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMessagesApi->getNormalizedMessages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **NSString***| User ID. If not specified, assume that of the current authenticated user. If specified, it must be that of a user for which the current authenticated user has read access to. | [optional] 
 **sdid** | **NSString***| Source device ID of the messages being searched. | [optional] 
 **mid** | **NSString***| The message ID being searched. | [optional] 
 **fieldPresence** | **NSString***| String representing a field from the specified device ID. | [optional] 
 **filter** | **NSString***| Filter. | [optional] 
 **offset** | **NSString***| A string that represents the starting item, should be the value of &#39;next&#39; field received in the last response. (required for pagination) | [optional] 
 **count** | **NSNumber***| count | [optional] 
 **startDate** | **NSNumber***| startDate | [optional] 
 **endDate** | **NSNumber***| endDate | [optional] 
 **order** | **NSString***| Desired sort order: &#39;asc&#39; or &#39;desc&#39; | [optional] 

### Return type

[**ACNormalizedMessagesEnvelope***](ACNormalizedMessagesEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendActions**
```objc
-(NSURLSessionTask*) sendActionsWithData: (ACActions*) data
        completionHandler: (void (^)(ACMessageIDEnvelope* output, NSError* error)) handler;
```

Send Actions

Send Actions

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


ACActions* data = [[ACActions alloc] init]; // Actions that are passed in the body

ACMessagesApi*apiInstance = [[ACMessagesApi alloc] init];

// Send Actions
[apiInstance sendActionsWithData:data
          completionHandler: ^(ACMessageIDEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMessagesApi->sendActions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**ACActions***](ACActions*.md)| Actions that are passed in the body | 

### Return type

[**ACMessageIDEnvelope***](ACMessageIDEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMessage**
```objc
-(NSURLSessionTask*) sendMessageWithData: (ACMessage*) data
        completionHandler: (void (^)(ACMessageIDEnvelope* output, NSError* error)) handler;
```

Send Message

Send a message

### Example 
```objc
ACDefaultConfiguration *apiConfig = [ACDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: artikcloud_oauth)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


ACMessage* data = [[ACMessage alloc] init]; // Message object that is passed in the body

ACMessagesApi*apiInstance = [[ACMessagesApi alloc] init];

// Send Message
[apiInstance sendMessageWithData:data
          completionHandler: ^(ACMessageIDEnvelope* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ACMessagesApi->sendMessage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**ACMessage***](ACMessage*.md)| Message object that is passed in the body | 

### Return type

[**ACMessageIDEnvelope***](ACMessageIDEnvelope.md)

### Authorization

[artikcloud_oauth](../README.md#artikcloud_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

