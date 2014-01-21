TWWidget
========

TWWidget, a widget library for Taskworld mobile app.

TODO: Add more features.

### Usage Example
Displaying image view with filled-circle background.
```objective-c
  TWWidget* widget = [TWWidget viewWidgetWithFrame:CGRectMake(0, 0, 40, 40)];
  widget.imageName = @"icon_critical";
  widget.backgroundColor = [UIColor greenColor];
  
  widget.widgetDisplayMode = TWWidgetDisplayModeCircle;
  [self.contentView addSubview:widget];
```

Displaying text view with filled-rectangle background.
```objective-c
  TWWidget* widget = [TWWidget viewWidgetWithFrame:CGRectMake(0, 0, 40, 40)];
  widget.text = @"Hello";
  widget.backgroundColor = [UIColor greenColor];
  
  widget.widgetDisplayMode = TWWidgetDisplayModeRectangle;
  [self.contentView addSubview:widget];
```
