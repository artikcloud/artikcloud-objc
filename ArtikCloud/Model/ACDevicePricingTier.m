#import "ACDevicePricingTier.h"

@implementation ACDevicePricingTier

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"messageLimit": @"messageLimit", @"cost": @"cost", @"name": @"name", @"_description": @"description", @"active": @"active", @"interval": @"interval", @"ptid": @"ptid", @"type": @"type", @"billingInterval": @"billingInterval" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"messageLimit", @"cost", @"name", @"_description", @"active", @"interval", @"ptid", @"type", @"billingInterval"];
  return [optionalProperties containsObject:propertyName];
}

@end
