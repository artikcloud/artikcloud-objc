#import <Foundation/Foundation.h>
#import "ACTaskEnvelope.h"
#import "ACTaskRequest.h"
#import "ACMetadataEnvelope.h"
#import "ACTaskByDidListEnvelope.h"
#import "ACDeviceTypesInfoEnvelope.h"
#import "ACMetadataPropertiesEnvelope.h"
#import "ACTaskStatusesEnvelope.h"
#import "ACTaskStatusesHistoryEnvelope.h"
#import "ACTaskListEnvelope.h"
#import "ACMetadataQueryEnvelope.h"
#import "ACDeviceTypesInfo.h"
#import "ACTaskUpdateResponse.h"
#import "ACTaskUpdateRequest.h"
#import "ACDeviceTaskUpdateRequest.h"
#import "ACDeviceTaskUpdateResponse.h"
#import "ACApi.h"

/**
* ARTIK Cloud API
* No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
*
* OpenAPI spec version: 2.0.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/


@interface ACDevicesManagementApi: NSObject <ACApi>

extern NSString* kACDevicesManagementApiErrorDomain;
extern NSInteger kACDevicesManagementApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Create a new task for one or more devices
/// Create a new task for one or more devices
///
/// @param taskPayload Task object to be created
/// 
///  code:0 message:"success"
///
/// @return ACTaskEnvelope*
-(NSNumber*) createTasksWithTaskPayload: (ACTaskRequest*) taskPayload
    completionHandler: (void (^)(ACTaskEnvelope* output, NSError* error)) handler;


/// Deletes a device's properties.
/// Deletes a device's properties.
///
/// @param did Device ID.
/// 
///  code:0 message:"success"
///
/// @return ACMetadataEnvelope*
-(NSNumber*) deleteServerPropertiesWithDid: (NSString*) did
    completionHandler: (void (^)(ACMetadataEnvelope* output, NSError* error)) handler;


/// Returns the list of tasks for a particular device id with optional status filter.
/// Returns the list of tasks for a particular device id with optional status filter.
///
/// @param did Device ID.
/// @param count Max results count. (optional)
/// @param offset Result starting offset. (optional)
/// @param status Status filter. Comma-separated statuses. (optional)
/// @param order Sort results by a field. Valid fields: createdOn. (optional)
/// @param sort Sort order. Valid values: asc or desc. (optional)
/// 
///  code:0 message:"success"
///
/// @return ACTaskByDidListEnvelope*
-(NSNumber*) getAllByDidWithDid: (NSString*) did
    count: (NSNumber*) count
    offset: (NSNumber*) offset
    status: (NSString*) status
    order: (NSString*) order
    sort: (NSString*) sort
    completionHandler: (void (^)(ACTaskByDidListEnvelope* output, NSError* error)) handler;


/// Read a device type device management information.
/// Read a device type device management information.
///
/// @param dtid Device type ID.
/// 
///  code:0 message:"success"
///
/// @return ACDeviceTypesInfoEnvelope*
-(NSNumber*) getDeviceTypesInfoWithDtid: (NSString*) dtid
    completionHandler: (void (^)(ACDeviceTypesInfoEnvelope* output, NSError* error)) handler;


/// Get a device type's device management manifest properties
/// Get a device type's device management manifest properties
///
/// @param dtid Device Type ID.
/// 
///  code:0 message:"success"
///
/// @return ACMetadataPropertiesEnvelope*
-(NSNumber*) getManifestPropertiesWithDtid: (NSString*) dtid
    completionHandler: (void (^)(ACMetadataPropertiesEnvelope* output, NSError* error)) handler;


/// Read a device's properties.
/// Read a device's properties.
///
/// @param did Device ID.
/// @param includeTimestamp Include timestamp. (optional)
/// 
///  code:0 message:"success"
///
/// @return ACMetadataEnvelope*
-(NSNumber*) getPropertiesWithDid: (NSString*) did
    includeTimestamp: (NSNumber*) includeTimestamp
    completionHandler: (void (^)(ACMetadataEnvelope* output, NSError* error)) handler;


/// Returns the details and status of a task id and the individual statuses of each device id in the list.
/// Returns the details and status of a task id and the individual statuses of each device id in the list.
///
/// @param tid Task ID.
/// @param count Max results count. (optional)
/// @param offset Result starting offset. (optional)
/// @param status Status filter. Comma-separated statuses. (optional)
/// @param dids Devices filter. Comma-separated device IDs. (optional)
/// 
///  code:0 message:"success"
///
/// @return ACTaskStatusesEnvelope*
-(NSNumber*) getStatusesWithTid: (NSString*) tid
    count: (NSNumber*) count
    offset: (NSNumber*) offset
    status: (NSString*) status
    dids: (NSString*) dids
    completionHandler: (void (^)(ACTaskStatusesEnvelope* output, NSError* error)) handler;


/// Returns the history of the status changes for a specific task id, or for a specific device id in that task.
/// Returns the history of the status changes for a specific task id, or for a specific device id in that task.
///
/// @param tid Task ID.
/// @param did Device ID. Optional. (optional)
/// 
///  code:0 message:"success"
///
/// @return ACTaskStatusesHistoryEnvelope*
-(NSNumber*) getStatusesHistoryWithTid: (NSString*) tid
    did: (NSString*) did
    completionHandler: (void (^)(ACTaskStatusesHistoryEnvelope* output, NSError* error)) handler;


/// Returns the details and global status of a specific task id.
/// Returns the details and global status of a specific task id.
///
/// @param tid Task ID.
/// 
///  code:0 message:"success"
///
/// @return ACTaskEnvelope*
-(NSNumber*) getTaskByIDWithTid: (NSString*) tid
    completionHandler: (void (^)(ACTaskEnvelope* output, NSError* error)) handler;


/// Returns the all the tasks for a device type.
/// Returns the all the tasks for a device type.
///
/// @param dtid Device Type ID.
/// @param count Max results count. (optional)
/// @param offset Result starting offset. (optional)
/// @param status Status filter. Comma-separated statuses. (optional)
/// @param order Sort results by a field. Valid fields: createdOn. (optional)
/// @param sort Sort order. Valid values: asc or desc. (optional)
/// 
///  code:0 message:"success"
///
/// @return ACTaskListEnvelope*
-(NSNumber*) getTasksWithDtid: (NSString*) dtid
    count: (NSNumber*) count
    offset: (NSNumber*) offset
    status: (NSString*) status
    order: (NSString*) order
    sort: (NSString*) sort
    completionHandler: (void (^)(ACTaskListEnvelope* output, NSError* error)) handler;


/// Query device properties across devices.
/// Query device properties across devices.
///
/// @param dtid Device Type ID.
/// @param count Max results count. (optional)
/// @param offset Result starting offset. (optional)
/// @param filter Query filter. Comma-separated key&#x3D;value pairs (optional)
/// @param includeTimestamp Include timestamp. (optional)
/// 
///  code:0 message:"success"
///
/// @return ACMetadataQueryEnvelope*
-(NSNumber*) queryPropertiesWithDtid: (NSString*) dtid
    count: (NSNumber*) count
    offset: (NSNumber*) offset
    filter: (NSString*) filter
    includeTimestamp: (NSNumber*) includeTimestamp
    completionHandler: (void (^)(ACMetadataQueryEnvelope* output, NSError* error)) handler;


/// Updates a device type information
/// Updates a device type information
///
/// @param dtid Device type ID.
/// @param deviceTypeInfo Device type info object to be set
/// 
///  code:0 message:"success"
///
/// @return ACDeviceTypesInfoEnvelope*
-(NSNumber*) updateDeviceTypesInfoWithDtid: (NSString*) dtid
    deviceTypeInfo: (ACDeviceTypesInfo*) deviceTypeInfo
    completionHandler: (void (^)(ACDeviceTypesInfoEnvelope* output, NSError* error)) handler;


/// Updates a device's server properties.
/// Updates a device's server properties.
///
/// @param did Device ID.
/// @param deviceProperties Device properties object to be set
/// 
///  code:0 message:"success"
///
/// @return ACMetadataEnvelope*
-(NSNumber*) updateServerPropertiesWithDid: (NSString*) did
    deviceProperties: (NSObject*) deviceProperties
    completionHandler: (void (^)(ACMetadataEnvelope* output, NSError* error)) handler;


/// Updates a task for all devices - For now just allows changing the state to cancelled.
/// Updates a task for all devices - For now just allows changing the state to cancelled.
///
/// @param tid Task ID.
/// @param taskUpdateRequest Task update request
/// 
///  code:0 message:"success"
///
/// @return ACTaskUpdateResponse*
-(NSNumber*) updateTaskWithTid: (NSString*) tid
    taskUpdateRequest: (ACTaskUpdateRequest*) taskUpdateRequest
    completionHandler: (void (^)(ACTaskUpdateResponse* output, NSError* error)) handler;


/// Updates a task for a specific device - For now just allows changing the state to cancelled.
/// Updates a task for a specific device - For now just allows changing the state to cancelled.
///
/// @param tid Task ID.
/// @param did Device ID.
/// @param deviceTaskUpdateRequest Device task update request
/// 
///  code:0 message:"success"
///
/// @return ACDeviceTaskUpdateResponse*
-(NSNumber*) updateTaskForDeviceWithTid: (NSString*) tid
    did: (NSString*) did
    deviceTaskUpdateRequest: (ACDeviceTaskUpdateRequest*) deviceTaskUpdateRequest
    completionHandler: (void (^)(ACDeviceTaskUpdateResponse* output, NSError* error)) handler;



@end