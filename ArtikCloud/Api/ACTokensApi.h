#import <Foundation/Foundation.h>
#import "ACTokenRequest.h"
#import "ACCheckTokenResponse.h"
#import "ACRefreshTokenResponse.h"
#import "ACApi.h"

/**
* ARTIK Cloud API
* No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
*
* OpenAPI spec version: 2.0.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/


@interface ACTokensApi: NSObject <ACApi>

extern NSString* kACTokensApiErrorDomain;
extern NSInteger kACTokensApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Check Token
/// (Deprecated) Check Token. See tokenInfo
///
/// @param tokenInfo Token object to be checked
/// 
///  code:0 message:"success"
///
/// @return ACCheckTokenResponse*
-(NSNumber*) checkTokenWithTokenInfo: (ACTokenRequest*) tokenInfo
    completionHandler: (void (^)(ACCheckTokenResponse* output, NSError* error)) handler;


/// Refresh Token
/// Refresh Token
///
/// @param grantType Grant Type.
/// @param refreshToken Refresh Token.
/// 
///  code:0 message:"success"
///
/// @return ACRefreshTokenResponse*
-(NSNumber*) refreshTokenWithGrantType: (NSString*) grantType
    refreshToken: (NSString*) refreshToken
    completionHandler: (void (^)(ACRefreshTokenResponse* output, NSError* error)) handler;



@end
