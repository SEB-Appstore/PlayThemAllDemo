//
//  AppDelegate.m
//  Graffoto
//
//  Created by SEB on 4/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "MasterViewController.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize navigationController = _navigationController;

- (void)dealloc
{
    [_window release];
    [_navigationController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
   
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.

 //   MasterViewController *masterViewController = [[[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil] autorelease];
    static dispatch_once_t onceToken;
    static NSBundle *myLibraryResourcesBundle = nil;
    /*
    dispatch_once(&onceToken, ^{
        myLibraryResourcesBundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"sxPlayerRessources" withExtension:@"bundle"]];
        UIStoryboard* story=[UIStoryboard storyboardWithName:@"Main" bundle:myLibraryResourcesBundle];
        MainViewController* m=[story instantiateViewControllerWithIdentifier:@"MainView"];
         // self.navigationController = [[[UINavigationController_Rotation alloc] initWithRootViewController:m] autorelease];
          self.navigationController = [story instantiateViewControllerWithIdentifier:@"NavController"];;
         self.navigationController.downloading = [story instantiateViewControllerWithIdentifier:@"Downloader"];
        
         self.navigationController.downloading.list=[[NSMutableArray alloc] initWithCapacity:0] ;
         self.navigationController.downloading.dataList=[[NSMutableArray alloc] initWithCapacity:0] ;
         self.navigationController.downloading.connectionList=[[NSMutableArray alloc] initWithCapacity:0] ;
        self.navigationController.viewControllers=[NSArray arrayWithObject:m];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationWillResignActive:)
                                                     name:UIApplicationWillResignActiveNotification
                                                   object:[UIApplication sharedApplication]];
        
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidEnterBackground:)
                                                     name:UIApplicationWillResignActiveNotification
                                                   object:[UIApplication sharedApplication]];
      
        [self.navigationController.navigationBar setBarStyle:UIBarStyleBlackTranslucent];
        [self.navigationController.navigationBar setTintColor:[UIColor redColor]];
        self.window.rootViewController = self.navigationController;
        [self.window makeKeyAndVisible];
    });
*/
    dispatch_once(&onceToken, ^{
        myLibraryResourcesBundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"PlayThemAllRessources" withExtension:@"bundle"]];
        UIStoryboard* story=[UIStoryboard storyboardWithName:@"Main" bundle:myLibraryResourcesBundle];
        MainViewController* m=[story instantiateViewControllerWithIdentifier:@"MainView"];
        // self.navigationController = [[[UINavigationController_Rotation alloc] initWithRootViewController:m] autorelease];
        self.navigationController = [story instantiateViewControllerWithIdentifier:@"NavController"];;
        self.navigationController.downloading = [story instantiateViewControllerWithIdentifier:@"Downloader"];
        
        self.navigationController.downloading.list=[[NSMutableArray alloc] initWithCapacity:0] ;
        self.navigationController.downloading.dataList=[[NSMutableArray alloc] initWithCapacity:0] ;
        self.navigationController.downloading.connectionList=[[NSMutableArray alloc] initWithCapacity:0] ;
        self.navigationController.viewControllers=[NSArray arrayWithObject:m];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationWillResignActive:)
                                                     name:UIApplicationWillResignActiveNotification
                                                   object:[UIApplication sharedApplication]];
        
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidEnterBackground:)
                                                     name:UIApplicationWillResignActiveNotification
                                                   object:[UIApplication sharedApplication]];
        
        [self.navigationController.navigationBar setBarStyle:UIBarStyleBlackTranslucent];
        [self.navigationController.navigationBar setTintColor:[UIColor colorWithRed:51./255. green:148./255. blue:243./255. alpha:1.]];
        self.window.rootViewController = self.navigationController;
        [self.window makeKeyAndVisible];
    });
   
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
