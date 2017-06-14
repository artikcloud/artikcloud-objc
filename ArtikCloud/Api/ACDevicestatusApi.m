#import "ACDevicestatusApi.h"
#import "ACQueryParamCollection.h"
#import "ACApiClient.h"
#import "ACDeviceStatus.h"
#import "ACDeviceStatusBatch.h"
#import "ACDeviceStatusPut.h"


@interface ACDevicestatusApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation ACDevicestatusApi

NSString* kACDevicestatusApiErrorDomain = @"ACDevicestatusApiErrorDomain";
NSInteger kACDevicestatusApiMissingParamErrorCode = 234513;

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
/// Get Device Status
/// Get Device Status
///  @param deviceId Device ID. 
///
///  @param includeSnapshot Include device snapshot into the response (optional)
///
///  @param includeSnapshotTimestamp Include device snapshot timestamp into the response (optional)
///
///  @returns ACDeviceStatus*
///
-(NSURLSessionTask*) getDeviceStatusWithDeviceId: (NSString*) deviceId
    includeSnapshot: (NSNumber*) includeSnapshot
    includeSnapshotTimestamp: (NSNumber*) includeSnapshotTimestamp
    completionHandler: (void (^)(ACDeviceStatus* output, NSError* error)) handler {
    // verify the required parameter 'deviceId' is set
    if (deviceId == nil) {
        NSParameterAssert(deviceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deviceId"] };
            NSError* error = [NSError errorWithDomain:kACDevicestatusApiErrorDomain code:kACDevicestatusApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devices/{deviceId}/status"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        pathParams[@"deviceId"] = deviceId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (includeSnapshot != nil) {
        queryParams[@"includeSnapshot"] = includeSnapshot;
    }
    if (includeSnapshotTimestamp != nil) {
        queryParams[@"includeSnapshotTimestamp"] = includeSnapshotTimestamp;
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
                              responseType: @"ACDeviceStatus*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACDeviceStatus*)data, error);
                                }
                            }];
}

///
/// Get Devices Status
/// Get Devices Status
///  @param dids List of device ids (comma-separated) for which the statuses are requested. 
///
///  @param includeSnapshot Include device snapshot into the response (optional)
///
///  @param includeSnapshotTimestamp Include device snapshot timestamp into the response (optional)
///
///  @returns ACDeviceStatusBatch*
///
-(NSURLSessionTask*) getDevicesStatusWithDids: (NSString*) dids
    includeSnapshot: (NSNumber*) includeSnapshot
    includeSnapshotTimestamp: (NSNumber*) includeSnapshotTimestamp
    completionHandler: (void (^)(ACDeviceStatusBatch* output, NSError* error)) handler {
    // verify the required parameter 'dids' is set
    if (dids == nil) {
        NSParameterAssert(dids);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dids"] };
            NSError* error = [NSError errorWithDomain:kACDevicestatusApiErrorDomain code:kACDevicestatusApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devices/status"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (dids != nil) {
        queryParams[@"dids"] = dids;
    }
    if (includeSnapshot != nil) {
        queryParams[@"includeSnapshot"] = includeSnapshot;
    }
    if (includeSnapshotTimestamp != nil) {
        queryParams[@"includeSnapshotTimestamp"] = includeSnapshotTimestamp;
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
                              responseType: @"ACDeviceStatusBatch*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACDeviceStatusBatch*)data, error);
                                }
                            }];
}

///
/// Update Device Status
/// Update Device Status
///  @param deviceId Device ID. 
///
///  @param body Body (optional)
///
///  @returns ACDeviceStatus*
///
-(NSURLSessionTask*) putDeviceStatusWithDeviceId: (NSString*) deviceId
    body: (ACDeviceStatusPut*) body
    completionHandler: (void (^)(ACDeviceStatus* output, NSError* error)) handler {
    // verify the required parameter 'deviceId' is set
    if (deviceId == nil) {
        NSParameterAssert(deviceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deviceId"] };
            NSError* error = [NSError errorWithDomain:kACDevicestatusApiErrorDomain code:kACDevicestatusApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devices/{deviceId}/status"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        pathParams[@"deviceId"] = deviceId;
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
    bodyParam = body;

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
                              responseType: @"ACDeviceStatus*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACDeviceStatus*)data, error);
                                }
                            }];
}



@end
