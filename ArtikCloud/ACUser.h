#import <Foundation/Foundation.h>
#import "ACObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol ACUser
@end

@interface ACUser : ACObject


@property(nonatomic) NSString* _id;

@property(nonatomic) NSString* name;

@property(nonatomic) NSString* email;

@property(nonatomic) NSString* fullName;

@property(nonatomic) NSString* saIdentity;

@property(nonatomic) NSNumber* createdOn;

@property(nonatomic) NSNumber* modifiedOn;

@end