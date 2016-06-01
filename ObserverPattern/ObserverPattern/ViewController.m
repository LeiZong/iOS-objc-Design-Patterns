//
//  ViewController.m
//  ObserverPattern
//
//  Created by Leasing on 16/6/1.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *notifLable;
@property (nonatomic, strong) Person *person;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:)
                                                 name:kNotification
                                               object:nil];
    self.person = [[Person alloc] init];
    self.person.name = @"Tom";
    [self addObserver:self
                  forKeyPath:@"person.name"
                     options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld
                     context:nil];
}

- (IBAction)changeName:(UIButton *)sender {
    self.person.name = @"Jerry";
}

- (void)receiveNotification:(NSNotification *)notification {
    NSLog(@"Notification's object = %@", notification.object);
    NSLog(@"Notification's userInfo = %@", notification.userInfo);
    self.notifLable.text = @"Recive Notification";
}

- (void)observeValueForKeyPath:(NSString*)keyPath ofObject:(id)object change:(NSDictionary*)change context:(void*)context {
    NSLog(@"被监测的那个对象的属性所在的路径:%@",keyPath);
    NSLog(@"被观察者:%@", object);
    NSLog(@"属性所有状态下的值:%@", change);
    NSLog(@"在注册观察者的时候,传过来的context :%@", context);

    if(![[change objectForKey:@"new"] isEqualToString:[change objectForKey:@"old"]]) {
    }
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
//    [[NSNotificationCenter defaultCenter] removeObserver:self name:kNotification object:nil];
    [self removeObserver:self forKeyPath:@"person.name" context:nil];
}

@end
