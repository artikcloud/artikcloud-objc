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


#import "ACOutputScene.h"


@protocol ACScenesEnvelope
@end

@interface ACScenesEnvelope : ACObject


@property(nonatomic) NSNumber* count;

@property(nonatomic) NSArray<ACOutputScene>* data;

@property(nonatomic) NSNumber* offset;

@property(nonatomic) NSNumber* total;

@end
