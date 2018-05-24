#import "ACDevicesManagementApi.h"
#import "ACQueryParamCollection.h"
#import "ACApiClient.h"
#import "ACAcceptanceStatusResponse.h"
#import "ACDeviceTaskUpdateRequest.h"
#import "ACDeviceTaskUpdateResponse.h"
#import "ACDeviceTypesInfo.h"
#import "ACDeviceTypesInfoEnvelope.h"
#import "ACMetadataEnvelope.h"
#import "ACMetadataPropertiesEnvelope.h"
#import "ACMetadataQueryEnvelope.h"
#import "ACPendingTasksList.h"
#import "ACTaskByDidListEnvelope.h"
#import "ACTaskEnvelope.h"
#import "ACTaskListEnvelope.h"
#import "ACTaskRequest.h"
#import "ACTaskStatusesEnvelope.h"
#import "ACTaskStatusesHistoryEnvelope.h"
#import "ACTaskUpdateRequest.h"
#import "ACTaskUpdateResponse.h"


@interface ACDevicesManagementApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation ACDevicesManagementApi

NSString* kACDevicesManagementApiErrorDomain = @"ACDevicesManagementApiErrorDomain";
NSInteger kACDevicesManagementApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[ACApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(ACApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Create a new task for one or more devices
/// Create a new task for one or more devices
///  @param taskPayload Task object to be created 
///
///  @returns ACTaskEnvelope*
///
-(NSURLSessionTask*) createTasksWithTaskPayload: (ACTaskRequest*) taskPayload
    completionHandler: (void (^)(ACTaskEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'taskPayload' is set
    if (taskPayload == nil) {
        NSParameterAssert(taskPayload);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taskPayload"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/tasks"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = taskPayload;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACTaskEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACTaskEnvelope*)data, error);
                                }
                            }];
}

///
/// Deletes a device's properties.
/// Deletes a device's properties.
///  @param did Device ID. 
///
///  @returns ACMetadataEnvelope*
///
-(NSURLSessionTask*) deleteServerPropertiesWithDid: (NSString*) did
    completionHandler: (void (^)(ACMetadataEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'did' is set
    if (did == nil) {
        NSParameterAssert(did);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"did"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/devices/{did}/serverproperties"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (did != nil) {
        pathParams[@"did"] = did;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACMetadataEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACMetadataEnvelope*)data, error);
                                }
                            }];
}

///
/// Returns the list of tasks for a particular device id with optional status filter.
/// Returns the list of tasks for a particular device id with optional status filter.
///  @param did Device ID. 
///
///  @param count Max results count. (optional)
///
///  @param offset Result starting offset. (optional)
///
///  @param status Status filter. Comma-separated statuses. (optional)
///
///  @param order Sort results by a field. Valid fields: createdOn. (optional)
///
///  @param sort Sort order. Valid values: asc or desc. (optional)
///
///  @returns ACTaskByDidListEnvelope*
///
-(NSURLSessionTask*) getAllByDidWithDid: (NSString*) did
    count: (NSNumber*) count
    offset: (NSNumber*) offset
    status: (NSString*) status
    order: (NSString*) order
    sort: (NSString*) sort
    completionHandler: (void (^)(ACTaskByDidListEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'did' is set
    if (did == nil) {
        NSParameterAssert(did);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"did"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/devices/{did}/tasks"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (did != nil) {
        pathParams[@"did"] = did;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (order != nil) {
        queryParams[@"order"] = order;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACTaskByDidListEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACTaskByDidListEnvelope*)data, error);
                                }
                            }];
}

///
/// Returns the list of  pending tasks for a particular device id.
/// Returns the list of all pending tasks (where acceptanceStatus is equal to WAITING ) for a particular device id.
///  @returns ACPendingTasksList*
///
-(NSURLSessionTask*) getAllPendingTasksByDidWithCompletionHandler: 
    (void (^)(ACPendingTasksList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/devices/{did}/pendingtasks"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACPendingTasksList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACPendingTasksList*)data, error);
                                }
                            }];
}

///
/// Read a device type device management information.
/// Read a device type device management information.
///  @param dtid Device type ID. 
///
///  @returns ACDeviceTypesInfoEnvelope*
///
-(NSURLSessionTask*) getDeviceTypesInfoWithDtid: (NSString*) dtid
    completionHandler: (void (^)(ACDeviceTypesInfoEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/devicetypes/{dtid}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (dtid != nil) {
        pathParams[@"dtid"] = dtid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACDeviceTypesInfoEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACDeviceTypesInfoEnvelope*)data, error);
                                }
                            }];
}

///
/// Get a device type's device management manifest properties
/// Get a device type's device management manifest properties
///  @param dtid Device Type ID. 
///
///  @returns ACMetadataPropertiesEnvelope*
///
-(NSURLSessionTask*) getManifestPropertiesWithDtid: (NSString*) dtid
    completionHandler: (void (^)(ACMetadataPropertiesEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/devicetypes/{dtid}/manifest/properties"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (dtid != nil) {
        pathParams[@"dtid"] = dtid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACMetadataPropertiesEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACMetadataPropertiesEnvelope*)data, error);
                                }
                            }];
}

///
/// Read a device's properties.
/// Read a device's properties.
///  @param did Device ID. 
///
///  @param includeTimestamp Include timestamp. (optional)
///
///  @returns ACMetadataEnvelope*
///
-(NSURLSessionTask*) getPropertiesWithDid: (NSString*) did
    includeTimestamp: (NSNumber*) includeTimestamp
    completionHandler: (void (^)(ACMetadataEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'did' is set
    if (did == nil) {
        NSParameterAssert(did);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"did"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/devices/{did}/properties"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (did != nil) {
        pathParams[@"did"] = did;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (includeTimestamp != nil) {
        queryParams[@"includeTimestamp"] = includeTimestamp;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACMetadataEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACMetadataEnvelope*)data, error);
                                }
                            }];
}

///
/// Returns the details and status of a task id and the individual statuses of each device id in the list.
/// Returns the details and status of a task id and the individual statuses of each device id in the list.
///  @param tid Task ID. 
///
///  @param count Max results count. (optional)
///
///  @param offset Result starting offset. (optional)
///
///  @param status Status filter. Comma-separated statuses. (optional)
///
///  @param dids Devices filter. Comma-separated device IDs. (optional)
///
///  @returns ACTaskStatusesEnvelope*
///
-(NSURLSessionTask*) getStatusesWithTid: (NSString*) tid
    count: (NSNumber*) count
    offset: (NSNumber*) offset
    status: (NSString*) status
    dids: (NSString*) dids
    completionHandler: (void (^)(ACTaskStatusesEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'tid' is set
    if (tid == nil) {
        NSParameterAssert(tid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tid"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/tasks/{tid}/statuses"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (tid != nil) {
        pathParams[@"tid"] = tid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (dids != nil) {
        queryParams[@"dids"] = dids;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACTaskStatusesEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACTaskStatusesEnvelope*)data, error);
                                }
                            }];
}

///
/// Returns the history of the status changes for a specific task id, or for a specific device id in that task.
/// Returns the history of the status changes for a specific task id, or for a specific device id in that task.
///  @param tid Task ID. 
///
///  @param did Device ID. Optional. (optional)
///
///  @returns ACTaskStatusesHistoryEnvelope*
///
-(NSURLSessionTask*) getStatusesHistoryWithTid: (NSString*) tid
    did: (NSString*) did
    completionHandler: (void (^)(ACTaskStatusesHistoryEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'tid' is set
    if (tid == nil) {
        NSParameterAssert(tid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tid"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/tasks/{tid}/statuses/history"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (tid != nil) {
        pathParams[@"tid"] = tid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (did != nil) {
        queryParams[@"did"] = did;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACTaskStatusesHistoryEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACTaskStatusesHistoryEnvelope*)data, error);
                                }
                            }];
}

///
/// Returns the details and global status of a specific task id.
/// Returns the details and global status of a specific task id.
///  @param tid Task ID. 
///
///  @returns ACTaskEnvelope*
///
-(NSURLSessionTask*) getTaskByIDWithTid: (NSString*) tid
    completionHandler: (void (^)(ACTaskEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'tid' is set
    if (tid == nil) {
        NSParameterAssert(tid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tid"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/tasks/{tid}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (tid != nil) {
        pathParams[@"tid"] = tid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACTaskEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACTaskEnvelope*)data, error);
                                }
                            }];
}

///
/// Returns the all the tasks for a device type.
/// Returns the all the tasks for a device type.
///  @param dtid Device Type ID. 
///
///  @param count Max results count. (optional)
///
///  @param offset Result starting offset. (optional)
///
///  @param status Status filter. Comma-separated statuses. (optional)
///
///  @param order Sort results by a field. Valid fields: createdOn. (optional)
///
///  @param sort Sort order. Valid values: asc or desc. (optional)
///
///  @returns ACTaskListEnvelope*
///
-(NSURLSessionTask*) getTasksWithDtid: (NSString*) dtid
    count: (NSNumber*) count
    offset: (NSNumber*) offset
    status: (NSString*) status
    order: (NSString*) order
    sort: (NSString*) sort
    completionHandler: (void (^)(ACTaskListEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/tasks"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (dtid != nil) {
        queryParams[@"dtid"] = dtid;
    }
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (status != nil) {
        queryParams[@"status"] = status;
    }
    if (order != nil) {
        queryParams[@"order"] = order;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACTaskListEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACTaskListEnvelope*)data, error);
                                }
                            }];
}

///
/// Notify/Inform about task acceptance status
/// User notify/informs to ARTIKCloud about task acceptance status
///  @param tid Task ID. 
///
///  @param did Device ID. 
///
///  @param notifyAboutAcceptanceStatus Notify about task acceptance status 
///
///  @returns ACAcceptanceStatusResponse*
///
-(NSURLSessionTask*) notifyAboutAcceptanceWithTid: (NSString*) tid
    did: (NSString*) did
    notifyAboutAcceptanceStatus: (ACAcceptanceStatusResponse*) notifyAboutAcceptanceStatus
    completionHandler: (void (^)(ACAcceptanceStatusResponse* output, NSError* error)) handler {
    // verify the required parameter 'tid' is set
    if (tid == nil) {
        NSParameterAssert(tid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tid"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'did' is set
    if (did == nil) {
        NSParameterAssert(did);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"did"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'notifyAboutAcceptanceStatus' is set
    if (notifyAboutAcceptanceStatus == nil) {
        NSParameterAssert(notifyAboutAcceptanceStatus);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"notifyAboutAcceptanceStatus"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/tasks/{tid}/devices/{did}/acceptance"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (tid != nil) {
        pathParams[@"tid"] = tid;
    }
    if (did != nil) {
        pathParams[@"did"] = did;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = notifyAboutAcceptanceStatus;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACAcceptanceStatusResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACAcceptanceStatusResponse*)data, error);
                                }
                            }];
}

///
/// Query device properties across devices.
/// Query device properties across devices.
///  @param dtid Device Type ID. 
///
///  @param count Max results count. (optional)
///
///  @param offset Result starting offset. (optional)
///
///  @param filter Query filter. Comma-separated key=value pairs (optional)
///
///  @param includeTimestamp Include timestamp. (optional)
///
///  @returns ACMetadataQueryEnvelope*
///
-(NSURLSessionTask*) queryPropertiesWithDtid: (NSString*) dtid
    count: (NSNumber*) count
    offset: (NSNumber*) offset
    filter: (NSString*) filter
    includeTimestamp: (NSNumber*) includeTimestamp
    completionHandler: (void (^)(ACMetadataQueryEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/devices/properties"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (dtid != nil) {
        queryParams[@"dtid"] = dtid;
    }
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (filter != nil) {
        queryParams[@"filter"] = filter;
    }
    if (includeTimestamp != nil) {
        queryParams[@"includeTimestamp"] = includeTimestamp;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACMetadataQueryEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACMetadataQueryEnvelope*)data, error);
                                }
                            }];
}

///
/// Updates a device type information
/// Updates a device type information
///  @param dtid Device type ID. 
///
///  @param deviceTypeInfo Device type info object to be set 
///
///  @returns ACDeviceTypesInfoEnvelope*
///
-(NSURLSessionTask*) updateDeviceTypesInfoWithDtid: (NSString*) dtid
    deviceTypeInfo: (ACDeviceTypesInfo*) deviceTypeInfo
    completionHandler: (void (^)(ACDeviceTypesInfoEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'deviceTypeInfo' is set
    if (deviceTypeInfo == nil) {
        NSParameterAssert(deviceTypeInfo);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deviceTypeInfo"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/devicetypes/{dtid}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (dtid != nil) {
        pathParams[@"dtid"] = dtid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = deviceTypeInfo;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACDeviceTypesInfoEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACDeviceTypesInfoEnvelope*)data, error);
                                }
                            }];
}

///
/// Updates a device's server properties.
/// Updates a device's server properties.
///  @param did Device ID. 
///
///  @param deviceProperties Device properties object to be set 
///
///  @returns ACMetadataEnvelope*
///
-(NSURLSessionTask*) updateServerPropertiesWithDid: (NSString*) did
    deviceProperties: (NSObject*) deviceProperties
    completionHandler: (void (^)(ACMetadataEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'did' is set
    if (did == nil) {
        NSParameterAssert(did);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"did"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'deviceProperties' is set
    if (deviceProperties == nil) {
        NSParameterAssert(deviceProperties);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deviceProperties"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/devices/{did}/serverproperties"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (did != nil) {
        pathParams[@"did"] = did;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = deviceProperties;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACMetadataEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACMetadataEnvelope*)data, error);
                                }
                            }];
}

///
/// Updates a task for all devices - For now just allows changing the state to cancelled.
/// Updates a task for all devices - For now just allows changing the state to cancelled.
///  @param tid Task ID. 
///
///  @param taskUpdateRequest Task update request 
///
///  @returns ACTaskUpdateResponse*
///
-(NSURLSessionTask*) updateTaskWithTid: (NSString*) tid
    taskUpdateRequest: (ACTaskUpdateRequest*) taskUpdateRequest
    completionHandler: (void (^)(ACTaskUpdateResponse* output, NSError* error)) handler {
    // verify the required parameter 'tid' is set
    if (tid == nil) {
        NSParameterAssert(tid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tid"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'taskUpdateRequest' is set
    if (taskUpdateRequest == nil) {
        NSParameterAssert(taskUpdateRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taskUpdateRequest"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/tasks/{tid}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (tid != nil) {
        pathParams[@"tid"] = tid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = taskUpdateRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACTaskUpdateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACTaskUpdateResponse*)data, error);
                                }
                            }];
}

///
/// Updates a task for a specific device - For now just allows changing the state to cancelled.
/// Updates a task for a specific device - For now just allows changing the state to cancelled.
///  @param tid Task ID. 
///
///  @param did Device ID. 
///
///  @param deviceTaskUpdateRequest Device task update request 
///
///  @returns ACDeviceTaskUpdateResponse*
///
-(NSURLSessionTask*) updateTaskForDeviceWithTid: (NSString*) tid
    did: (NSString*) did
    deviceTaskUpdateRequest: (ACDeviceTaskUpdateRequest*) deviceTaskUpdateRequest
    completionHandler: (void (^)(ACDeviceTaskUpdateResponse* output, NSError* error)) handler {
    // verify the required parameter 'tid' is set
    if (tid == nil) {
        NSParameterAssert(tid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tid"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'did' is set
    if (did == nil) {
        NSParameterAssert(did);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"did"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'deviceTaskUpdateRequest' is set
    if (deviceTaskUpdateRequest == nil) {
        NSParameterAssert(deviceTaskUpdateRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deviceTaskUpdateRequest"] };
            NSError* error = [NSError errorWithDomain:kACDevicesManagementApiErrorDomain code:kACDevicesManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicemgmt/tasks/{tid}/devices/{did}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (tid != nil) {
        pathParams[@"tid"] = tid;
    }
    if (did != nil) {
        pathParams[@"did"] = did;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = deviceTaskUpdateRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ACDeviceTaskUpdateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACDeviceTaskUpdateResponse*)data, error);
                                }
                            }];
}



@end
