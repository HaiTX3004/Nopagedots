#import <UIKit/UIKit.h>
#import <Preferences/Preferences.h>

@interface _UIPageControlIndicatorContentView : UIView

@end

%hook _UIPageControlIndicatorContentView

- (void)didMoveToWindow {
    %orig;
    self.hidden = YES;
}

%end
