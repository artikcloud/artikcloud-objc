#import "ACAggregatesHistogramResponse.h"

@implementation ACAggregatesHistogramResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"data": @"data", @"endDate": @"endDate", @"field": @"field", @"interval": @"interval", @"sdid": @"sdid", @"size": @"size", @"startDate": @"startDate" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"data", @"endDate", @"field", @"interval", @"sdid", @"size", @"startDate"];
  return [optionalProperties containsObject:propertyName];
}

@end
