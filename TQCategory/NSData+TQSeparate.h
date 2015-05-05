//
//  NSData+TQSeparate.h
//  
//
//  Created by qfu on 5/5/15.
//
//

#import <Foundation/Foundation.h>

@interface NSData (TQSeparate)

- (void)separateWithUnitLength:(NSInteger)unitLength chunkBlock:(void (^)(NSData *chunk))chunkBlock;

@end
