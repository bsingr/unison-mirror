/* ReconItem */

#import <Cocoa/Cocoa.h>

@class OCamlValue;

@interface ReconItem : NSObject
{
    NSString *path;
    NSString *left;
    NSString *right;
    NSImage *direction;
    NSString *directionSortString;
    NSString *progress;
    NSString *details;
    OCamlValue *ri; // an ocaml Common.reconItem
    int index; // index in Ri list
    BOOL resolved;
    BOOL selected;
}
- initWithRiAndIndex:(OCamlValue *)v index:(int)i;
- (BOOL)selected;
- (void)setSelected:(BOOL)x;
- (NSString *) path;
- (NSString *) left;
- (NSString *) right;
- (NSImage *) direction;
- (void)setDirection:(char *)d;
- (void) doAction:(unichar)action;
- (void) doIgnore:(unichar)action;
- (NSString *) progress;
- (void)resetProgress;
- (NSString *) details;
- (NSString *)updateDetails;
- (BOOL)isConflict;
- (BOOL)changedFromDefault;
- (void)revertDirection;
- (BOOL)canDiff;
- (void)showDiffs;
- (NSString *) leftSortKey;
- (NSString *) rightSortKey;
- (NSString *) replicaSortKey:(NSString *)sortString;
- (NSString *) directionSortKey;
- (NSString *) progressSortKey;
- (NSString *) pathSortKey;

@end