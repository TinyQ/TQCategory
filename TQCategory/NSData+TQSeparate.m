//
//  NSData+TQSeparate.m
//  
//
//  Created by qfu on 5/5/15.
//
//

#import "NSData+TQSeparate.h"

@implementation NSData (TQSeparate)

- (void)separateWithUnitLength:(NSInteger)unitLength chunkBlock:(void (^)(NSData *chunk))chunkBlock;
{
    NSInteger totalLength = self.length;
    NSInteger totalPiece  = 0;
    
    if ((totalLength % unitLength) == 0)
    {
        totalPiece = totalLength / unitLength;
    }
    else
    {
        totalPiece = (totalLength / unitLength) + 1;
    }
    
    NSRange range = (NSRange){
        .location = 0,
        .length   = 0
    };
    
    for (int i = 0; i < totalPiece; i ++)
    {
        BOOL isOnlyOne = (totalPiece == 1);
        
        if (isOnlyOne)
        {
            range.location = 0;
            range.length   = totalLength;
        }
        else
        {
            BOOL isLastOne = (i == (totalPiece - 1));
            
            if (!isLastOne)
            {
                range.length = unitLength;
            }
            else
            {
                range.length = totalLength - NSMaxRange(range);
            }
            
            range.location = i * unitLength;
        }
        
        NSData *pieceData = [self subdataWithRange:range];
        
        if (chunkBlock) {
            chunkBlock(pieceData);
        }
    }
}

@end
