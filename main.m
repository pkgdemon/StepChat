#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        NSApplication *app = [NSApplication sharedApplication];
        
        // Create a simple window for testing
        NSWindow *window = [[NSWindow alloc] 
            initWithContentRect:NSMakeRect(100, 100, 400, 300)
            styleMask:NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskResizable
            backing:NSBackingStoreBuffered
            defer:NO];
        
        [window setTitle:@"StepChat - Test"];
        [window makeKeyAndOrderFront:nil];
        
        // Add a simple label
        NSTextField *label = [[NSTextField alloc] initWithFrame:NSMakeRect(50, 150, 300, 30)];
        [label setStringValue:@"StepChat is running! Interface files needed."];
        [label setBezeled:NO];
        [label setDrawsBackground:NO];
        [label setEditable:NO];
        [label setSelectable:NO];
        
        [[window contentView] addSubview:label];
        
        [app run];
        return 0;
    }
}
