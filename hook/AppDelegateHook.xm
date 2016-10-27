#import "SocketClass.h"
%hook AppDelegate
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    SocketClass *socket_start = [[SocketClass alloc] init];
//    [socket_start SendSocket:@"Start"];
//    return %orig;
//}
- (void)applicationWillTerminate:(UIApplication *)application{
    SocketClass *socket_done = [[SocketClass alloc] init];
    [socket_done SendSocket:@"DONE"];
    
    //make sure the socket message is sent
    int i = 0;
    while (i < 100)
    {
        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode
                                 beforeDate:[NSDate distantFuture]];
        i++;
    }
    
    return %orig;
}


%end