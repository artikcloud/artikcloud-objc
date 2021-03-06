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




@protocol ACExportStatusResponse
@end

@interface ACExportStatusResponse : ACObject


@property(nonatomic) NSNumber* expirationDate;

@property(nonatomic) NSString* exportId;

@property(nonatomic) NSString* md5;
/* Export status [optional]
 */
@property(nonatomic) NSString* status;

@property(nonatomic) NSString* ttl;

@end
