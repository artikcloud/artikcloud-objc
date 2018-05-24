#import "ACModelResponseData.h"

@implementation ACModelResponseData

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"outputs": @"outputs", @"uid": @"uid", @"data": @"data", @"trainingCron": @"trainingCron", @"inputs": @"inputs", @"origin": @"origin", @"_id": @"id", @"type": @"type", @"parameters": @"parameters", @"version": @"version", @"aid": @"aid", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"outputs", @"uid", @"data", @"trainingCron", @"inputs", @"origin", @"_id", @"type", @"parameters", @"version", @"aid", @"status"];
  return [optionalProperties containsObject:propertyName];
}

@end
