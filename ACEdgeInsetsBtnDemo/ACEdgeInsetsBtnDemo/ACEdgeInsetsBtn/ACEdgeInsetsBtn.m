//
//  ACEdgeInsetsBtn.m
//  BtnEdgeInsetTest
//
//  Created by lonlife on 2018/12/18.
//  Copyright © 2018 lonlife. All rights reserved.
//

#import "ACEdgeInsetsBtn.h"

@implementation ACEdgeInsetsBtn

- (instancetype)initWithImage:(UIImage *)image text:(NSString *)text font:(UIFont *)font edgeInsetsType:(ACEdgeInsetsBtnType)edgeInsetsType space:(CGFloat)space
{
    if(self = [super init]){
        [self setTitle:text forState:UIControlStateNormal];
        self.titleLabel.font = font;
        [self setImage:image forState:UIControlStateNormal];
        if(edgeInsetsType == ACEdgeInsetsBtnTypeNormal){
            self.imageEdgeInsets = UIEdgeInsetsMake(0, space * -1, 0, space);
            [self sizeToFit];
        }else if(edgeInsetsType == ACEdgeInsetsBtnTypeRight){
            UILabel *label = [self textLabel:text font:font];
            self.imageEdgeInsets = UIEdgeInsetsMake(0, label.frame.size.width, 0, label.frame.size.width * -1);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, image.size.width * -1 - space, 0, image.size.width + space);
            [self sizeToFit];
            self.frame = CGRectMake(0,0,self.frame.size.width + space,self.frame.size.height);
        }else if(edgeInsetsType == ACEdgeInsetsBtnTop){
            UILabel *label = [self textLabel:text font:font];
            self.imageEdgeInsets = UIEdgeInsetsMake(-image.size.height, 0, image.size.height, 0);
            CGFloat diffX = image.size.width + (label.frame.size.width - image.size.width) * 0.5;
            CGFloat diffY = (image.size.height - label.frame.size.height) * 0.5;
            self.titleEdgeInsets = UIEdgeInsetsMake(-diffY + space, diffX * -1, diffY - space, diffX);
            [self sizeToFit];
        }
    }
    return self;
}


- (UILabel *)textLabel:(NSString *)text font:(UIFont *)font
{
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = font;
    [label sizeToFit];
    return label;
}

@end
