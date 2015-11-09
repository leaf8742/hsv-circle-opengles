//
//  ArcView.m
//  GLES2Sample
//
//  Created by LEAF on 14-6-17.
//
//

#import "ArcView.h"

@implementation ArcView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(ctx, [[UIColor whiteColor] CGColor]);
    CGContextSetLineWidth(ctx, 1);
    CGFloat aspect = self.frame.size.width / self.frame.size.height;
    CGFloat radius = (aspect < 0 ? self.frame.size.height : self.frame.size.width) / 2;

    CGContextMoveToPoint(ctx, self.frame.size.width / 2, self.frame.size.height / 2);
    CGContextAddArc(ctx, self.frame.size.width / 2, self.frame.size.height / 2, radius, 0.0f, M_PI * 2, YES);
    CGContextStrokePath(ctx);
}

@end
