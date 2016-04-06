#import <Foundation/Foundation.h>
#import "ACObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol ACMessageOut
@end

@interface ACMessageOut : ACObject

/* Message ID. [optional]
 */
@property(nonatomic) NSString* mid;
/* User ID. [optional]
 */
@property(nonatomic) NSString* uid;
/* Source Device Type ID. [optional]
 */
@property(nonatomic) NSString* sdtid;
/* Created Timestamp (past, present or future). Defaults to current time if not provided. [optional]
 */
@property(nonatomic) NSNumber* cts;
/* Manifest Version. [optional]
 */
@property(nonatomic) NSNumber* mv;

@end
