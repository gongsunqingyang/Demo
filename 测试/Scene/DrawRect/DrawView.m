//
//  DrawView.m
//  测试
//
//  Created by yanglin on 2020/4/24.
//  Copyright © 2020 Softisland. All rights reserved.
//

#import "DrawView.h"


@implementation DrawView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.passwordNumber = 6;
        self.rectColor = [UIColor lightGrayColor];
    }
    return self;
}

//- (void)layoutSubviews {
//    [super layoutSubviews];
//
//    CGSize _rectSize = CGSizeMake(40, 40);
//
//    NSInteger top = (self.frame.size.height - _rectSize.height) / 2.0f;
//    NSInteger margin = (self.frame.size.width - _rectSize.width * self.passwordNumber) / (self.passwordNumber - 1);
//
//    CGContextRef context = UIGraphicsGetCurrentContext();
//
//    NSInteger _style = 0;
//    switch (_style) {
//        case 0: {    // 方框样式
//            // 画方框
//            for (int i = 0; i < self.passwordNumber; i++) {
//                CGContextSetLineWidth(context, 1);
//                CGContextSetStrokeColorWithColor(context, self.rectColor.CGColor);
//                CGRect singleRect = CGRectMake((_rectSize.width + margin) * i, top, _rectSize.width, _rectSize.height);
//                CGContextStrokeRect(context, singleRect);
//            }
//        }
//            break;
//        case 1: {  // 下划线样式
//            // 画外框
//            CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
//            CGContextDrawPath(context, kCGPathFill);
//
//            // 画下划线
//            for (int i = 0; i < self.passwordNumber; i ++) {
//                CGFloat startX = _rectSize.width * i + 6;
//                CGFloat endX = startX + _rectSize.width - 6 * 2;
//                CGContextSetLineWidth(context, 1);
//                CGContextSetStrokeColorWithColor(context, self.rectColor.CGColor);
//                CGContextMoveToPoint(context, startX, top + _rectSize.height);
//                CGContextAddLineToPoint(context, endX, top + _rectSize.height);
//                CGContextClosePath(context);
//                CGContextDrawPath(context, kCGPathStroke);
//            }
//
//            // 画输入光标
//            CGFloat startX = _rectSize.width * self.saveStore.length + _rectSize.width / 2;
//            CGFloat startY = (_rectSize.height - 15) / 2;
//            CGFloat endX = startX;
//            CGFloat endY = startY + 15;
//            CGContextSetLineWidth(context, 1);
//            CGContextSetStrokeColorWithColor(context, [UIColor colorWithHexString:kColorCyan].CGColor);
//            CGContextMoveToPoint(context, startX, startY);
//            CGContextAddLineToPoint(context, endX, endY);
//            CGContextClosePath(context);
//            CGContextDrawPath(context, kCGPathStroke);
//        }
//            break;
//    }
//
//    // 画黑点
//    for (int i = 0; i < self.saveStore.length; i++) {
//        CGContextSetFillColorWithColor(context, self.pointColor.CGColor);
//        CGContextAddArc(context, (_rectSize.width + margin) * i + _rectSize.width / 2, top + _rectSize.height / 2.0f, self.pointRadius, 0, M_PI * 2.0f, YES);
//        CGContextDrawPath(context, kCGPathFill);
//    }
//
//}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();

    // 红色方框
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextFillRect(context, CGRectMake(10, 10, rect.size.width - 20, rect.size.height - 20));

    CGContextSetLineWidth(context, 2);
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextStrokeRect(context, CGRectMake(20, 20, 100, 100));
//    CGContextAddRect(context, CGRectMake(20, 20, 100, 100));
//    CGContextDrawPath(context, kCGPathFillStroke);
}

@end
