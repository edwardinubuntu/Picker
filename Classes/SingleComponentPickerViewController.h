//
//  SingleComponentPickerViewController.h
//  Pickers
//
//  Created by Edward Chiang on 2010/12/14.
//  Copyright 2010 Edward in Action. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SingleComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
	UIPickerView *singlePicker;
	NSArray *pickerData;
}

@property (nonatomic, retain) IBOutlet UIPickerView *singlePicker;
@property (nonatomic, retain) NSArray *pickerData;
- (IBAction)buttonPressed;
@end
