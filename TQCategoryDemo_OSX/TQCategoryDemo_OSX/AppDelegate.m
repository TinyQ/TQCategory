//
//  AppDelegate.m
//  TQCategoryDemo_OSX
//
//  Created by qfu on 4/9/15.
//  Copyright (c) 2015 qfu. All rights reserved.
//

#import "AppDelegate.h"
#import <IOBluetooth/Bluetooth.h>
#import "../../TQCategory/IOBluetoothSDPUUID+TQStringInit.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    IOBluetoothSDPUUID *sdpUUID = [IOBluetoothSDPUUID uuidWithString:@"58724AF1-54FA-9D9E-E9F0-5FE143DBD517"];
    
    NSLog(@"IOBluetoothSDPUUID %@",sdpUUID);
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
