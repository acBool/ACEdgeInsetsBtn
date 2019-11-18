//
//  ViewController.m
//  ACEdgeInsetsBtnDemo
//
//

#import "ViewController.h"
#import "ACEdgeInsetsBtn/ACEdgeInsetsBtn.h"

#define     DefaultFont     [UIFont systemFontOfSize:20.0f]
#define     DefaultImage    [UIImage imageNamed:@"mail"]
#define     DefaultText     @"技术支持"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self testAddBtn];
}


- (void)testAddBtn
{
    ACEdgeInsetsBtn *btn = [[ACEdgeInsetsBtn alloc] initWithImage:DefaultImage text:DefaultText font:DefaultFont edgeInsetsType:ACEdgeInsetsBtnTypeNormal space:5];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(50,80,btn.frame.size.width,btn.frame.size.height);
    [self.view addSubview:btn];
    
    ACEdgeInsetsBtn *btn1 = [[ACEdgeInsetsBtn alloc] initWithImage:DefaultImage text:DefaultText font:DefaultFont edgeInsetsType:ACEdgeInsetsBtnTypeRight space:5];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn1.frame = CGRectMake(50,250,btn1.frame.size.width,btn1.frame.size.height);
    [self.view addSubview:btn1];
    
    ACEdgeInsetsBtn *btn2 = [[ACEdgeInsetsBtn alloc] initWithImage:DefaultImage text:DefaultText font:DefaultFont edgeInsetsType:ACEdgeInsetsBtnTop space:5];
    [btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn2.frame = CGRectMake(50,400,btn2.frame.size.width,btn2.frame.size.height);
    [self.view addSubview:btn2];
}

@end
