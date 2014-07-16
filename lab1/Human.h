#import <Foundation/Foundation.h>

@interface Human : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSDate *birthDate;

- (int)age;

@end
