#import <Foundation/Foundation.h>
#import "ACObject.h"

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




@protocol ACUpgradePathUserToken
@end

@interface ACUpgradePathUserToken : ACObject

/* User ID [optional]
 */
@property(nonatomic) NSString* uid;
/* User token from initial upgrade path request [optional]
 */
@property(nonatomic) NSString* accessToken;
/* Device ID [optional]
 */
@property(nonatomic) NSString* did;

@end
