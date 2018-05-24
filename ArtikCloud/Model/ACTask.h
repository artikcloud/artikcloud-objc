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


#import "ACTaskParameters.h"
#import "ACTaskStatusCounts.h"


@protocol ACTask
@end

@interface ACTask : ACObject

/* Filter [optional]
 */
@property(nonatomic) NSString* filter;
/* Task type [optional]
 */
@property(nonatomic) NSString* taskType;
/* Modified on [optional]
 */
@property(nonatomic) NSNumber* modifiedOn;
/* Device Type ID [optional]
 */
@property(nonatomic) NSString* dtid;
/* Status counts [optional]
 */
@property(nonatomic) ACTaskStatusCounts* statusCounts;
/* Property [optional]
 */
@property(nonatomic) NSString* _property;
/* Task ID [optional]
 */
@property(nonatomic) NSString* _id;
/* Device IDs [optional]
 */
@property(nonatomic) NSArray<NSString*>* dids;
/* Boolean to check if task needs acceptance for OTA [optional]
 */
@property(nonatomic) NSNumber* needsAcceptance;
/* Task parameters [optional]
 */
@property(nonatomic) ACTaskParameters* taskParameters;
/* Created on [optional]
 */
@property(nonatomic) NSNumber* createdOn;
/* Status [optional]
 */
@property(nonatomic) NSString* status;

@end
