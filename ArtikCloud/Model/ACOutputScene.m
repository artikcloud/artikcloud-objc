#import "ACOutputScene.h"

@implementation ACOutputScene

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"uid": @"uid", @"aid": @"aid", @"name": @"name", @"_description": @"description", @"actions": @"actions", @"error": @"error" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"uid", @"aid", @"name", @"_description", @"actions", @"error"];
  return [optionalProperties containsObject:propertyName];
}

@end
