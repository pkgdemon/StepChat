#import <Foundation/NSObject.h>
#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface SimpleDelegate : NSObject <NSApplicationDelegate>
@end

@implementation SimpleDelegate
- (void)applicationDidFinishLaunching:(NSNotification *)notification {
    NSLog(@"Simple StepChat launched successfully!");
    NSWindow *window = [[NSWindow alloc] initWithContentRect:NSMakeRect(100, 100, 300, 200)
                                                   styleMask:NSWindowStyleMaskTitled | NSWindowStyleMaskClosable
                                                     backing:NSBackingStoreBuffered
                                                       defer:NO];
    [window setTitle:@"Simple StepChat"];
    [window makeKeyAndOrderFront:nil];
}
@end

int main(int argc, char *argv[])
{
    @autoreleasepool {
        NSApplication *app = [NSApplication sharedApplication];
        SimpleDelegate *delegate = [[SimpleDelegate alloc] init];
        [app setDelegate:delegate];
        return NSApplicationMain(argc, (const char **)argv);
    }
}