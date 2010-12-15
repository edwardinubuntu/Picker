//
//  CustomPickerViewController.h
//  Pickers
//
//  Created by Edward Chiang on 2010/12/14.
//  Copyright 2010 Edward in Action. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
	UIPickerView *picker;
	UILabel *winLabel;
	NSArray *column1;
	NSArray *column2;
	NSArray *column3;
	NSArray *column4;
	NSArray *column5;
	
	UIButton *button;
}

@property (nonatomic, retain) IBOutlet UIPickerView *picker;
@property (nonatomic, retain) IBOutlet UILabel *winLabel;

@property (nonatomic, retain) NSArray *column1;
@property (nonatomic, retain) NSArray *column2;
@property (nonatomic, retain) NSArray *column3;
@property (nonatomic, retain) NSArray *column4;
@property (nonatomic, retain) NSArray *column5;
@property (nonatomic, retain) IBOutlet UIButton *button;

-(IBAction)spin;

@end
