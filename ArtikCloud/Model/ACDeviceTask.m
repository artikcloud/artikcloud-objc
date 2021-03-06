#import "ACDeviceTask.h"

@implementation ACDeviceTask

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"numAttempts": @"numAttempts", @"errorMessage": @"errorMessage", @"errorCode": @"errorCode", @"did": @"did", @"status": @"status", @"ts": @"ts" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"numAttempts", @"errorMessage", @"errorCode", @"did", @"status", @"ts"];
  return [optionalProperties containsObject:propertyName];
}

@end
