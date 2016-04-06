#import <Foundation/Foundation.h>
#import "ACObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol ACWebSocketError
@end

@interface ACWebSocketError : ACObject

/* Message. [optional]
 */
@property(nonatomic) NSString* message;
/* Code [optional]
 */
@property(nonatomic) NSNumber* code;
/* Confirmation ID [optional]
 */
@property(nonatomic) NSString* cid;

@end
