#import <Foundation/Foundation.h>
#import "ACObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "ACFieldPresence.h"


@protocol ACFieldPresenceEnvelope
@end

@interface ACFieldPresenceEnvelope : ACObject


@property(nonatomic) NSString* sdid;

@property(nonatomic) NSString* fieldPresence;

@property(nonatomic) NSNumber* startDate;

@property(nonatomic) NSNumber* endDate;

@property(nonatomic) NSString* interval;

@property(nonatomic) NSNumber* size;

@property(nonatomic) NSArray<ACFieldPresence>* data;

@end
