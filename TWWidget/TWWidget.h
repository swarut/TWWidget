//
//  TWWidget.h
//  Taskworld
//
//  Created by Warut Surapat on 1/17/14.
//  Copyright (c) 2014 Taskworld. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, WidgetType) {
  TWWidgetView = 0,
  TWWidgetButton = 1 << 0
};

typedef NS_ENUM(NSInteger, WidgetDisplayMode) {
  TWWidgetDisplayModeRectangle = 0,
  TWWidgetDisplayModeCircle = 1 << 0
};

@interface TWWidget : UIView

@property (assign, nonatomic) WidgetType widgetType;
@property (assign, nonatomic) WidgetDisplayMode widgetDisplayMode;
@property (strong, nonatomic) UILabel* label;
@property (strong, nonatomic) UIImageView* imageView;

@property (copy, nonatomic) NSString* text;
@property (copy, nonatomic) NSString* imageName;

+ (TWWidget*)viewWidgetWithFrame:(CGRect)frame;
+ (TWWidget*)viewWidgetWithFrame:(CGRect)frame withText:(NSString*)text;
+ (TWWidget*)viewWidgetWithFrame:(CGRect)frame withImageName:(NSString*)imageName;
+ (TWWidget*)buttonWidgetWithFrame:(CGRect)frame;
+ (TWWidget*)buttonWidgetWithFrame:(CGRect)frame withText:(NSString*)text;
+ (TWWidget*)buttonWidgetWithFrame:(CGRect)frame withImageName:(NSString*)imageName;

@end
