#import "ACTier.h"

@implementation ACTier

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"modifiedOn": @"modifiedOn", @"messageLimit": @"messageLimit", @"cost": @"cost", @"name": @"name", @"_description": @"description", @"interval": @"interval", @"ptid": @"ptid", @"type": @"type", @"billingInterval": @"billingInterval", @"createdOn": @"createdOn" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"modifiedOn", @"messageLimit", @"cost", @"name", @"_description", @"interval", @"ptid", @"type", @"billingInterval", @"createdOn"];
  return [optionalProperties containsObject:propertyName];
}

@end
