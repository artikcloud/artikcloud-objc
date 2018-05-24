#import "ACDeviceTypePricingTier.h"

@implementation ACDeviceTypePricingTier

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"revenueSharePercent": @"revenueSharePercent", @"tiers": @"tiers", @"modifiedOn": @"modifiedOn", @"comments": @"comments", @"dtid": @"dtid", @"contactInfo": @"contactInfo", @"ptType": @"ptType", @"version": @"version", @"createdOn": @"createdOn", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"revenueSharePercent", @"tiers", @"modifiedOn", @"comments", @"dtid", @"contactInfo", @"ptType", @"version", @"createdOn", @"status"];
  return [optionalProperties containsObject:propertyName];
}

@end
