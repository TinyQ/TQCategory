//
//  IOBluetoothSDPUUID+TQStringInit.h
//  Bluetooth RFCOMM Sample
//
//  Created by qfu on 4/9/15.
//  Copyright (c) 2015 Garvin Casimir. All rights reserved.
//

#import <IOBluetooth/IOBluetooth.h>

@interface IOBluetoothSDPUUID (TQStringInit)

/*
 * create IOBluetoothSDPUUID with string like "58724AF1-54FA-9D9E-E9F0-5FE143DBD517"
 */

+ (instancetype)uuidWithString:(NSString *)string;

+ (instancetype)uuidWithNSUUID:(NSUUID *)uuid;

@end
