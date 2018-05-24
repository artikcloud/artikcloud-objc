#import <Foundation/Foundation.h>
#import "ACObject.h"

/**
* ARTIK Cloud API
* No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
*
* OpenAPI spec version: 2.0.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "ACAggregatesHistogramData.h"


@protocol ACAggregatesHistogramResponse
@end

@interface ACAggregatesHistogramResponse : ACObject


@property(nonatomic) NSArray<ACAggregatesHistogramData>* data;

@property(nonatomic) NSNumber* endDate;

@property(nonatomic) NSString* field;

@property(nonatomic) NSString* interval;

@property(nonatomic) NSString* sdid;

@property(nonatomic) NSNumber* size;

@property(nonatomic) NSNumber* startDate;

@end
