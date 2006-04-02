//
//  ReconTableView.m
//  Unison
//
//  Created by Trevor Jim on Wed Aug 27 2003.
//  Copyright (c) 2003.  See file COPYING for details.
//

#import "ReconTableView.h"
#import "ReconItem.h"
#import "MyController.h"

static BOOL editable = NO;

@implementation ReconTableView

- (BOOL)editable
{
    return editable;
}

- (void)setEditable:(BOOL)x
{
    editable = x;
}

- (BOOL)validateItem:(IBAction *) action
{
    if (action == @selector(selectAll:)
        || action == @selector(selectConflicts:)
        || action == @selector(copyLR:)
        || action == @selector(copyRL:)
        || action == @selector(leaveAlone:)
        || action == @selector(forceNewer:)
        || action == @selector(forceOlder:)
        || action == @selector(revert:)
        || action == @selector(ignorePath:)
        || action == @selector(ignoreExt:)
        || action == @selector(ignoreName:))
        return editable;
    else if (action == @selector(merge:)) {
        if (!editable) return NO;
        else return [self canDiffSelection];
    }
    else if (action == @selector(showDiff:)) {
        if ((!editable) || (!([self numberOfSelectedRows]==1)))
            return NO;
	else return [self canDiffSelection];
    }
    else return YES;
}

- (BOOL)validateMenuItem:(NSMenuItem *)menuItem
{
	return [self validateItem:[menuItem action]];
}

- (BOOL)validateToolbarItem:(NSToolbarItem *)toolbarItem
{
       return [self validateItem:[toolbarItem action]];
}

- (void)doIgnore:(unichar)c
{
    NSMutableArray *reconItems = [[self dataSource] reconItems];
    NSEnumerator *e = [self selectedRowEnumerator];
    NSNumber *n = [e nextObject];
    int i = -1;
    for (; n != nil; n = [e nextObject]) {
        i = [n intValue];
        [[reconItems objectAtIndex:i] doIgnore:c];
    }
    if (i>=0) { // something was selected
        i = [[self dataSource] updateForIgnore:i];
        [self selectRow:i byExtendingSelection:NO];
        [self reloadData];
    }
}

- (IBAction)ignorePath:(id)sender
{
    [self doIgnore:'I'];
}

- (IBAction)ignoreExt:(id)sender
{
    [self doIgnore:'E'];
}

- (IBAction)ignoreName:(id)sender
{
    [self doIgnore:'N'];
}

- (void)doAction:(unichar)c
{
    NSEnumerator *e = [self selectedRowEnumerator];
    NSNumber *n = [e nextObject];
    int numSelected = 0;
    int i = -1;
    for (; n != nil; n = [e nextObject]) {
        numSelected++;
        i = [n intValue];
        NSMutableArray *reconItems = [[self dataSource] reconItems];
        [[reconItems objectAtIndex:i] doAction:c];
    }
    if (numSelected>0) {
      if (numSelected == 1 && [self numberOfRows] > i+1 && c!='d') {
            // Move to next row, unless already at last row, or if more than one row selected
            [self selectRow:i+1 byExtendingSelection:NO];
            [self scrollRowToVisible:i+1];
      }
      else [self reloadData];
    }
}

- (IBAction)copyLR:(id)sender
{
    [self doAction:'>'];
}

- (IBAction)copyRL:(id)sender
{
    [self doAction:'<'];
}

- (IBAction)leaveAlone:(id)sender
{
    [self doAction:'/'];
}

- (IBAction)forceOlder:(id)sender
{
    [self doAction:'-'];
}

- (IBAction)forceNewer:(id)sender
{
    [self doAction:'+'];
}

- (IBAction)selectConflicts:(id)sender
{
    [self deselectAll:self];
    NSMutableArray *reconItems = [[self dataSource] reconItems];
    int i = 0;
    for (; i < [reconItems count]; i++) {
        if ([[reconItems objectAtIndex:i] isConflict])
            [self selectRow:i byExtendingSelection:YES];
    }
}

- (IBAction)revert:(id)sender
{
    NSMutableArray *reconItems = [[self dataSource] reconItems];
    NSEnumerator *e = [self selectedRowEnumerator];
    NSNumber *n = [e nextObject];
    int i;
    for (; n != nil; n = [e nextObject]) {
        i = [n intValue];
        [[reconItems objectAtIndex:i] revertDirection];
    }
    [self reloadData];
}

- (IBAction)merge:(id)sender
{
    [self doAction:'m'];
}

- (IBAction)showDiff:(id)sender
{
    [self doAction:'d'];
}

/* There are menu commands for these, but we add some shortcuts so you don't
   have to press the Command key */
- (void)keyDown:(NSEvent *)event
{
    /* actions are disabled when when menu items are */
    if (!editable) {
        [super keyDown:event];
        return;
    }

    unichar c = [[event characters] characterAtIndex:0];
    switch (c) {
    case '>':
    case NSRightArrowFunctionKey:
        [self doAction:'>'];
        break;
    case '<':
    case NSLeftArrowFunctionKey:
        [self doAction:'<'];
        break;
    case '?':
    case '/':
        [self doAction:'/'];
        break;
    default:
        [super keyDown:event];
        break;
    }
}

- (BOOL)canDiffSelection
{
    NSMutableArray *reconItems = [[self dataSource] reconItems];
    NSEnumerator *e = [self selectedRowEnumerator];
    NSNumber *n = [e nextObject];
    int i;
    BOOL canDiff = YES;
    for (; n != nil; n = [e nextObject]) {
        i = [n intValue];
        if (![[reconItems objectAtIndex:i] canDiff]) canDiff= NO;
    }    
    return canDiff;
}

@end
