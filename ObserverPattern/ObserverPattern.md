# iOS观察者模式 - NSNotificationCenter 和 KVO

##NSNotificationCenter
NSNotificationCenter就是一个消息通知机制，类似广播。观察者只需要向消息中心注册感兴趣的东西，当有地方发出这个消息的时候，通知中心会发送给注册这个消息的对象。这样也起到了多个对象之间解耦的作用。苹果给封装了这个NSNotificationCenter，让我们可以很方便的进行通知的注册和移除。但是要注意要记得移除通知。并且NSNotificationCenter效率不是很高。


### 注册通知

```
- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveNotification:)
                                                 name:kNotification
                                               object:nil];
}

- (void)receiveNotification:(NSNotification *)notification {
    NSLog(@"Notification's object = %@", notification.object);
    NSLog(@"Notification's userInfo = %@", notification.userInfo);
}
```
### 发送通知
```
- (IBAction)sendNotification:(UIButton *)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotification
                                                        object:nil
                                                      userInfo:@{@"key": @"value"}];
}
```
###移除通知
```
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
```
## KVO
KVO(Key-Value Observing)，它提供一种机制，当指定的对象的属性被修改后，则对象就会接受到通知。相比NSNotificationCenter, KVO更加简洁而直接。
###注册需要观察的对象的属性
```
- (void)viewDidLoad {
    [super viewDidLoad];
    self.person = [[Person alloc] init];
    self.person.name = @"Tom";
    [self addObserver:self
                  forKeyPath:@"person.name"
                     options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld
                     context:nil];
}
```
###实现回调方法
```
- (void)observeValueForKeyPath:(NSString*)keyPath ofObject:(id)object change:(NSDictionary*)change context:(void*)context {
    NSLog(@"被监测的那个对象的属性所在的路径:%@",keyPath);
    NSLog(@"被观察者:%@", object);
    NSLog(@"属性所有状态下的值:%@", change);
    NSLog(@"在注册观察者的时候,传过来的context :%@", context);
}
```
###移除观察
```
- (void)dealloc {
    [self removeObserver:self forKeyPath:@"person.name" context:nil];
}
```