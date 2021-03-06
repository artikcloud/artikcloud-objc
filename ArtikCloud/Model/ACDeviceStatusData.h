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




@protocol ACDeviceStatusData
@end

@interface ACDeviceStatusData : ACObject


@property(nonatomic) NSNumber* lastTimeOnline;

@property(nonatomic) NSNumber* lastActionTs;

@property(nonatomic) NSNumber* lastMessageTs;

@property(nonatomic) NSString* availability;

@property(nonatomic) NSDictionary<NSString*, NSObject*>* snapshot;

@end
