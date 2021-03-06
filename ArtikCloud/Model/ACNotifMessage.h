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




@protocol ACNotifMessage
@end

@interface ACNotifMessage : ACObject


@property(nonatomic) NSString* uid;

@property(nonatomic) NSNumber* cts;

@property(nonatomic) NSDictionary<NSString*, NSObject*>* data;

@property(nonatomic) NSString* mid;

@property(nonatomic) NSString* sdid;

@property(nonatomic) NSString* mv;

@property(nonatomic) NSString* sdtid;

@property(nonatomic) NSNumber* ts;

@end
