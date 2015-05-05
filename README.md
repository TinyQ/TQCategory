# TQCategory
Some objective-c category for iOS &amp; OSX

**IOBluetoothSDPUUID+TQStringInit** 

使用字符串或者 NSUUID 生成 IOBluetoothSDPUUID 

	NSString	to 	IOBluetoothSDPUUID

	NSUUID   	to 	IOBluetoothSDPUUID

**NSData+TQSeparate**

根据传入大小分割NSData，通过BLock返回每次分割的Data。

    [data separateWithUnitLength:100 chunkBlock:^(NSData *chunk) {
    
    }];