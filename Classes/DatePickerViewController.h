//
//  DatePickerViewController.h
//  Pickers
//
//  Created by Edward Chiang on 2010/12/14.
//  Copyright 2010 Edward in Action. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DatePickerViewController : UIViewController {
	UIDatePicker *datePicker;
}
@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;
-(IBAction)buttonPressed;
@end
