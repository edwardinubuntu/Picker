//
//  DependentComponentPickerViewController.h
//  Pickers
//
//  Created by Edward Chiang on 2010/12/14.
//  Copyright 2010 Edward in Action. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kStateCompoment	0
#define kZipCompoment 1

@interface DependentComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>  {
		
	UIPickerView *picker;
	
	NSDictionary *stateZips;
	NSArray *states;
	NSArray *zips;

}

@property (retain, nonatomic) IBOutlet UIPickerView *picker;
@property (retain, nonatomic) IBOutlet NSDictionary *stateZips;
@property (retain, nonatomic) IBOutlet NSArray *states;
@property (retain, nonatomic) IBOutlet NSArray *zips;

-(IBAction) buttonPressed;

@end
