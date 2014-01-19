//
//  TWWidget.m
//  Taskworld
//
//  Created by Warut Surapat on 1/17/14.
//  Copyright (c) 2014 Taskworld. All rights reserved.
//

#import "TWWidget.h"

@implementation TWWidget

- (id)initWithFrame:(CGRect)frame{
  self = [super initWithFrame:frame];
  if (self) {
    
  }
  return self;
}

- (void)setWidgetDisplayMode:(WidgetDisplayMode)widgetDisplayMode {
  switch (widgetDisplayMode) {
    case TWWidgetDisplayModeCircle:
      self.layer.cornerRadius = self.frame.size.width / 2.0f;
      self.layer.masksToBounds = YES;
      break;
    case TWWidgetDisplayModeRectangle:
      self.layer.cornerRadius = 0;
      self.layer.masksToBounds = NO;
      break;
    default:
      break;
  }
}

- (void)setWidgetType:(WidgetType)widgetType {
  switch (widgetType) {
    case TWWidgetView:
      break;
    case TWWidgetButton:
      break;
    default:
      break;
  }
}

- (UILabel*)label {
  if (!_label) {
    _label = [[UILabel alloc] initWithFrame:self.frame];
    [self addSubview:_label];
  }
  return _label;
}

- (UIImageView*)imageView {
  if (!_imageView) {
    _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    [self addSubview:_imageView];
  }
  return _imageView;
}

+ (TWWidget*)viewWidgetWithFrame:(CGRect)frame {
  TWWidget* widget = [[TWWidget alloc] initWithFrame:frame];
  widget.widgetType = TWWidgetView;
  return widget;
}

+ (TWWidget*)viewWidgetWithFrame:(CGRect)frame withText:(NSString*)text {
  TWWidget* widget = [TWWidget viewWidgetWithFrame:frame];
  widget.text = text;
  return widget;
}

+ (TWWidget*)viewWidgetWithFrame:(CGRect)frame withImageName:(NSString*)imageName {
  TWWidget* widget = [TWWidget viewWidgetWithFrame:frame];
  widget.imageName = imageName;
  return widget;
}

+ (TWWidget*)buttonWidgetWithFrame:(CGRect)frame {
  TWWidget* widget = [[TWWidget alloc] initWithFrame:frame];
  widget.widgetType =TWWidgetButton;
  return widget;
}

+ (TWWidget*)buttonWidgetWithFrame:(CGRect)frame withText:(NSString*)text {
  TWWidget* widget = [TWWidget buttonWidgetWithFrame:frame];
  widget.text = text;
  return widget;
}

+ (TWWidget*)buttonWidgetWithFrame:(CGRect)frame withImageName:(NSString*)imageName {
  TWWidget* widget = [TWWidget buttonWidgetWithFrame:frame];
  widget.imageName = imageName;
  return widget;
}

- (void)setImageName:(NSString *)imageName {
  self.imageView.image = [UIImage imageNamed:imageName];
  [self.imageView sizeToFit];
  CGFloat xPosition = (self.frame.size.width - self.imageView.frame.size.width)/2.0f;
  CGFloat yPosition = (self.frame.size.height - self.imageView.frame.size.height)/2.0f;
  self.imageView.frame = CGRectMake(
    xPosition, yPosition, self.imageView.size.width, self.imageView.size.height);
  self.label.hidden = YES;
}

- (void)setText:(NSString *)text {
  self.label.text = text;
  self.label.numberOfLines = 0;
  [self.label sizeToFit];
  self.imageView.hidden = YES;
  CGFloat xPosition = (self.frame.size.width - self.label.frame.size.width)/2.0f;
  CGFloat yPosition = (self.frame.size.height - self.label.frame.size.height)/2.0f;
  self.label.frame = CGRectMake(xPosition, yPosition, self.label.size.width, self.label.size.height);
}

@end
