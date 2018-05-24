#import <Foundation/Foundation.h>
#import "ACSceneCreationInfo.h"
#import "ACSceneEnvelope.h"
#import "ACScenesEnvelope.h"
#import "ACApi.h"

/**
* ARTIK Cloud API
* No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
*
* OpenAPI spec version: 2.0.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/



@interface ACScenesApi: NSObject <ACApi>

extern NSString* kACScenesApiErrorDomain;
extern NSInteger kACScenesApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(ACApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create a new scene
/// Create a new scene
///
/// @param body Body
/// 
///  code:0 message:"success"
///
/// @return ACSceneEnvelope*
-(NSURLSessionTask*) createSceneWithBody: (ACSceneCreationInfo*) body
    completionHandler: (void (^)(ACSceneEnvelope* output, NSError* error)) handler;


/// Get a scene
/// Get a scene
///
/// @param sceneId Scene id
/// 
///  code:0 message:"success"
///
/// @return ACSceneEnvelope*
-(NSURLSessionTask*) getSceneWithSceneId: (NSString*) sceneId
    completionHandler: (void (^)(ACSceneEnvelope* output, NSError* error)) handler;


/// Get all user scenes
/// Get all user scenes
///
/// @param count count (optional)
/// @param offset offset (optional)
/// 
///  code:0 message:"success"
///
/// @return ACScenesEnvelope*
-(NSURLSessionTask*) getScenesWithCount: (NSString*) count
    offset: (NSString*) offset
    completionHandler: (void (^)(ACScenesEnvelope* output, NSError* error)) handler;


/// Delete a scene
/// Delete a scene
///
/// @param sceneId Scene id
/// 
///  code:0 message:"success"
///
/// @return ACSceneEnvelope*
-(NSURLSessionTask*) scenesSceneIdDeleteWithSceneId: (NSString*) sceneId
    completionHandler: (void (^)(ACSceneEnvelope* output, NSError* error)) handler;


/// Trigger a scene
/// Trigger a scene
///
/// @param sceneId Scene id
/// @param body Body
/// 
///  code:0 message:"success"
///
/// @return ACSceneEnvelope*
-(NSURLSessionTask*) triggerSceneWithSceneId: (NSString*) sceneId
    body: (NSObject*) body
    completionHandler: (void (^)(ACSceneEnvelope* output, NSError* error)) handler;


/// Update a scene
/// Update a scene
///
/// @param sceneId Scene id
/// @param body Body
/// 
///  code:0 message:"success"
///
/// @return ACSceneEnvelope*
-(NSURLSessionTask*) updateSceneWithSceneId: (NSString*) sceneId
    body: (ACSceneCreationInfo*) body
    completionHandler: (void (^)(ACSceneEnvelope* output, NSError* error)) handler;



@end