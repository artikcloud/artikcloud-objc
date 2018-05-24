#import "ACSubscription.h"

@implementation ACSubscription

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"awsRegion": @"awsRegion", @"includeSharedDevices": @"includeSharedDevices", @"_description": @"description", @"awsKey": @"awsKey", @"awsSecret": @"awsSecret", @"createdOn": @"createdOn", @"awsKinesisStreamName": @"awsKinesisStreamName", @"uid": @"uid", @"messageType": @"messageType", @"ddid": @"ddid", @"subscriptionType": @"subscriptionType", @"name": @"name", @"sdid": @"sdid", @"callbackUrl": @"callbackUrl", @"_id": @"id", @"aid": @"aid", @"sdtid": @"sdtid" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"awsRegion", @"includeSharedDevices", @"_description", @"awsKey", @"awsSecret", @"createdOn", @"awsKinesisStreamName", @"uid", @"messageType", @"ddid", @"subscriptionType", @"name", @"sdid", @"callbackUrl", @"_id", @"aid", @"sdtid"];
  return [optionalProperties containsObject:propertyName];
}

@end
