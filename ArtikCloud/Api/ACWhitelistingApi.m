#import "ACWhitelistingApi.h"
#import "ACQueryParamCollection.h"
#import "ACApiClient.h"
#import "ACCertificateEnvelope.h"
#import "ACDeviceTypeUpdateInput.h"
#import "ACRejectedCSVRowsEnvelope.h"
#import "ACUploadIdEnvelope.h"
#import "ACUploadStatusEnvelope.h"
#import "ACWhitelistEnvelope.h"
#import "ACWhitelistResultEnvelope.h"


@interface ACWhitelistingApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation ACWhitelistingApi

NSString* kACWhitelistingApiErrorDomain = @"ACWhitelistingApiErrorDomain";
NSInteger kACWhitelistingApiMissingParamErrorCode = 234513;

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
/// Delete a vdid from the devicetype whitelist.
/// Delete a vdid from the devicetype whitelist.
///  @param dtid Device Type ID. 
///
///  @param vdid Vendor Device ID. 
///
///  @returns ACWhitelistEnvelope*
///
-(NSURLSessionTask*) deleteVdidWithDtid: (NSString*) dtid
    vdid: (NSString*) vdid
    completionHandler: (void (^)(ACWhitelistEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'vdid' is set
    if (vdid == nil) {
        NSParameterAssert(vdid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"vdid"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicetypes/{dtid}/whitelist/{vdid}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (dtid != nil) {
        pathParams[@"dtid"] = dtid;
    }
    if (vdid != nil) {
        pathParams[@"vdid"] = vdid;
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
                              responseType: @"ACWhitelistEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACWhitelistEnvelope*)data, error);
                                }
                            }];
}

///
/// Delete a whitelist certificate associated with a devicetype.
/// Delete a whitelist certificate associated with a devicetype.
///  @param dtid Device Type ID. 
///
///  @param cid Certificate ID. 
///
///  @returns ACWhitelistEnvelope*
///
-(NSURLSessionTask*) deleteWhitelistCertificateWithDtid: (NSString*) dtid
    cid: (NSString*) cid
    completionHandler: (void (^)(ACWhitelistEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'cid' is set
    if (cid == nil) {
        NSParameterAssert(cid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"cid"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicetypes/{dtid}/whitelist/certificates/{cid}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (dtid != nil) {
        pathParams[@"dtid"] = dtid;
    }
    if (cid != nil) {
        pathParams[@"cid"] = cid;
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
                              responseType: @"ACWhitelistEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACWhitelistEnvelope*)data, error);
                                }
                            }];
}

///
/// Enable or disble whitelist feature of a device type
/// Enable or disble whitelist feature of a device type
///  @param dtid Device Type ID. 
///
///  @param deviceTypeUpdateInfo Device type update input. 
///
///  @returns ACWhitelistEnvelope*
///
-(NSURLSessionTask*) enableWhitelistWithDtid: (NSString*) dtid
    deviceTypeUpdateInfo: (ACDeviceTypeUpdateInput*) deviceTypeUpdateInfo
    completionHandler: (void (^)(ACWhitelistEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'deviceTypeUpdateInfo' is set
    if (deviceTypeUpdateInfo == nil) {
        NSParameterAssert(deviceTypeUpdateInfo);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deviceTypeUpdateInfo"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicetypes/:dtid/whitelist/enable"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"artikcloud_oauth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = deviceTypeUpdateInfo;

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
                              responseType: @"ACWhitelistEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACWhitelistEnvelope*)data, error);
                                }
                            }];
}

///
/// Get the list of rejected rows for an uploaded CSV file.
/// Get the list of rejected rows for an uploaded CSV file.
///  @param dtid Device type id related to the uploaded CSV file. 
///
///  @param uploadId Upload id related to the uploaded CSV file. 
///
///  @param count Max results count. (optional)
///
///  @param offset Result starting offset. (optional)
///
///  @returns ACRejectedCSVRowsEnvelope*
///
-(NSURLSessionTask*) getRejectedRowListWithDtid: (NSString*) dtid
    uploadId: (NSString*) uploadId
    count: (NSNumber*) count
    offset: (NSNumber*) offset
    completionHandler: (void (^)(ACRejectedCSVRowsEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'uploadId' is set
    if (uploadId == nil) {
        NSParameterAssert(uploadId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"uploadId"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicetypes/{dtid}/whitelist/{uploadId}/rejectedRows"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (dtid != nil) {
        pathParams[@"dtid"] = dtid;
    }
    if (uploadId != nil) {
        pathParams[@"uploadId"] = uploadId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
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
                              responseType: @"ACRejectedCSVRowsEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACRejectedCSVRowsEnvelope*)data, error);
                                }
                            }];
}

///
/// Get the status of a uploaded CSV file.
/// Get the status of a uploaded CSV file.
///  @param dtid Device type id related to the uploaded CSV file. 
///
///  @param uploadId Upload id related to the uploaded CSV file. 
///
///  @returns ACUploadStatusEnvelope*
///
-(NSURLSessionTask*) getUploadStatusWithDtid: (NSString*) dtid
    uploadId: (NSString*) uploadId
    completionHandler: (void (^)(ACUploadStatusEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'uploadId' is set
    if (uploadId == nil) {
        NSParameterAssert(uploadId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"uploadId"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicetypes/{dtid}/whitelist/{uploadId}/status"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (dtid != nil) {
        pathParams[@"dtid"] = dtid;
    }
    if (uploadId != nil) {
        pathParams[@"uploadId"] = uploadId;
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
                              responseType: @"ACUploadStatusEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACUploadStatusEnvelope*)data, error);
                                }
                            }];
}

///
/// Get whitelisted vdids of a device type.
/// Get whitelisted vdids of a device type.
///  @param dtid Device Type ID. 
///
///  @param count Max results count. (optional)
///
///  @param offset Result starting offset. (optional)
///
///  @returns ACWhitelistResultEnvelope*
///
-(NSURLSessionTask*) getWhitelistWithDtid: (NSString*) dtid
    count: (NSNumber*) count
    offset: (NSNumber*) offset
    completionHandler: (void (^)(ACWhitelistResultEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicetypes/{dtid}/whitelist"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (dtid != nil) {
        pathParams[@"dtid"] = dtid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (count != nil) {
        queryParams[@"count"] = count;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
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
                              responseType: @"ACWhitelistResultEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACWhitelistResultEnvelope*)data, error);
                                }
                            }];
}

///
/// Get whitelist certificate of device type.
/// Get whitelist certificate of device type.
///  @param dtid Device Type ID. 
///
///  @returns ACCertificateEnvelope*
///
-(NSURLSessionTask*) getWhitelistCertificateWithDtid: (NSString*) dtid
    completionHandler: (void (^)(ACCertificateEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicetypes/{dtid}/whitelist/certificates"];

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
                              responseType: @"ACCertificateEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACCertificateEnvelope*)data, error);
                                }
                            }];
}

///
/// Get the status of whitelist feature (enabled/disabled) of a device type.
/// Get the status of whitelist feature (enabled/disabled) of a device type.
///  @param dtid Device Type ID. 
///
///  @returns ACWhitelistEnvelope*
///
-(NSURLSessionTask*) getWhitelistStatusWithDtid: (NSString*) dtid
    completionHandler: (void (^)(ACWhitelistEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicetypes/{dtid}/whitelist/status"];

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
                              responseType: @"ACWhitelistEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACWhitelistEnvelope*)data, error);
                                }
                            }];
}

///
/// Upload a CSV file related to the Device Type.
/// Upload a CSV file related to the Device Type.
///  @param dtid Device Type ID. 
///
///  @param file Device Type ID. 
///
///  @returns ACUploadIdEnvelope*
///
-(NSURLSessionTask*) uploadCSVWithDtid: (NSString*) dtid
    file: (NSData*) file
    completionHandler: (void (^)(ACUploadIdEnvelope* output, NSError* error)) handler {
    // verify the required parameter 'dtid' is set
    if (dtid == nil) {
        NSParameterAssert(dtid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"dtid"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'file' is set
    if (file == nil) {
        NSParameterAssert(file);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"file"] };
            NSError* error = [NSError errorWithDomain:kACWhitelistingApiErrorDomain code:kACWhitelistingApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/devicetypes/{dtid}/whitelist"];

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
    bodyParam = file;

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
                              responseType: @"ACUploadIdEnvelope*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ACUploadIdEnvelope*)data, error);
                                }
                            }];
}



@end
