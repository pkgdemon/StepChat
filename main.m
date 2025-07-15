#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        NSApplication *app = [NSApplication sharedApplication];
        
        NSLog(@"Starting StepChat application...");
        NSLog(@"Bundle path: %@", [[NSBundle mainBundle] bundlePath]);
        NSLog(@"Resources path: %@", [[NSBundle mainBundle] resourcePath]);
        
        // Check if MainMenu.gorm exists
        NSString *gormPath = [[NSBundle mainBundle] pathForResource:@"MainMenu" ofType:@"gorm"];
        NSLog(@"GORM path: %@", gormPath ? gormPath : @"NOT FOUND");
        
        // Load the main GORM file which contains the application delegate and main menu
        BOOL success = [NSBundle loadNibNamed:@"MainMenu" owner:app];
        
        if (!success) {
            NSLog(@"Failed to load MainMenu.gorm");
            // Try alternative path
            success = [[NSBundle mainBundle] loadNibNamed:@"MainMenu" 
                                                    owner:app 
                                          topLevelObjects:nil];
            if (!success) {
                NSLog(@"Alternative loading method also failed");
                return 1;
            }
        }
        
        NSLog(@"Successfully loaded MainMenu.gorm");
        NSLog(@"App delegate: %@", [app delegate]);
        
        // The GORM file should set up the application delegate automatically
        // through the connections defined in Gorm
        
        [app run];
        return 0;
    }
}
