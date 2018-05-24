#import "ACNotifMessage.h"

@implementation ACNotifMessage

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"uid": @"uid", @"cts": @"cts", @"data": @"data", @"mid": @"mid", @"sdid": @"sdid", @"mv": @"mv", @"sdtid": @"sdtid", @"ts": @"ts" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"uid", @"cts", @"data", @"mid", @"sdid", @"mv", @"sdtid", @"ts"];
  return [optionalProperties containsObject:propertyName];
}

@end
