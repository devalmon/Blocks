//
//  SceneDelegate.m
//  Blocks
//
//  Created by Alexey Baryshnikov on 22.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "SceneDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    /*
    __block NSInteger counter = 0;
    
    void(^testBlock)(void);
    
    testBlock = ^{
        counter++;
        NSLog(@"test block");
    };
    
    testBlock();
    testBlock();
    testBlock();
    testBlock();
    
//    [self testMethodWithParam:@"input str" andValue:12];
    void(^testBlockWithParams)(NSString *, NSInteger) = ^(NSString *str, NSInteger intValue){
        NSLog(@"string = %@ and int = %ld", str, intValue);
    };
    
    
    testBlockWithParams(@"test", 12);
    
    NSString *(^testBlockReturnAndParmas)(NSString *, NSInteger) = ^(NSString *stringParam, NSInteger intValue){
        NSString *str = [NSString stringWithFormat:@"%@ and %ld", stringParam, intValue];
        return str;
    };
    
    NSString *result = testBlockReturnAndParmas(@"ok im there", 12);
    NSLog(@"%@",result);
    
    
    void(^hijackValue)(void) = ^{
        NSLog(@"%@ - value hijacked %ld time(s)", result, counter);
    };
    
    hijackValue();
 */
    [self testBlock:^{
        NSLog(@"start method in self");
    }];
    
    NSLog(@"finished method in self");
    
}

- (void)testMethod {
    NSLog(@"testMethod");
}

- (void)testMethodWithParam:(NSString *) string andValue: (NSInteger) intValue {
    NSLog(@"testMethodWithParam %@, and %ld", string, intValue);
}

- (void)testBlock: (void (^)(void)) helper {
    NSLog(@"start helper");
    helper();
    helper();
    helper();
    NSLog(@"finished helper");
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
