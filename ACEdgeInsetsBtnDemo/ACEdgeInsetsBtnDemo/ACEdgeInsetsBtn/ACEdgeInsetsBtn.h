//
//  ACEdgeInsetsBtn.h
//  BtnEdgeInsetTest
//
//

#import <UIKit/UIKit.h>

/**
 btn类型，以图片的位置为标准
 */
typedef NS_ENUM(NSInteger, ACEdgeInsetsBtnType){
    // 普通状态，即图片在左，文字在右
    ACEdgeInsetsBtnTypeNormal = 1,
    // 图片在右，文字在左
    ACEdgeInsetsBtnTypeRight ,
    // 图片在上，文字在下
    ACEdgeInsetsBtnTop
};

NS_ASSUME_NONNULL_BEGIN

@interface ACEdgeInsetsBtn : UIButton


/**
 初始化方法

 @param image btn所要显示的image
 @param text btn所要显示的text
 @param font btn的字体信息
 @param edgeInsetsType 图片的位置类型
 @param space image和文字之间的间距
 @return    返回实例button对象
 */
- (instancetype)initWithImage:(UIImage *)image text:(NSString *)text font:(UIFont *)font edgeInsetsType:(ACEdgeInsetsBtnType)edgeInsetsType space:(CGFloat)space;

@end

NS_ASSUME_NONNULL_END
