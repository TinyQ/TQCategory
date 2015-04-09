//
//  IOBluetoothSDPUUID+TQStringInit.m
//  Bluetooth RFCOMM Sample
//
//  Created by qfu on 4/9/15.
//  Copyright (c) 2015 Garvin Casimir. All rights reserved.
//

#import "IOBluetoothSDPUUID+TQStringInit.h"

@implementation IOBluetoothSDPUUID (TQStringInit)

+ (instancetype)uuidWithNSUUID:(NSUUID *)uuid
{
    if (!uuid) {
        return nil;
    }
    
    uuid_t uuidBytes;
    
    [uuid getUUIDBytes:uuidBytes];
    
    //  about 16 length
    //  typedef __darwin_uuid_t	uuid_t;
    //  typedef	unsigned char	__darwin_uuid_t[16];
    
    return [IOBluetoothSDPUUID uuidWithBytes:uuidBytes length:16];
}

+ (instancetype)uuidWithString:(NSString *)string
{
    if (!string) {
        return nil;
    }
    
    NSUUID *uuid = [[NSUUID alloc] initWithUUIDString:string];
    
    return [[self class] uuidWithNSUUID:uuid];
}

@end
