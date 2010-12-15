//
//  DoubleComponentPickerViewController.m
//  Pickers
//
//  Created by Edward Chiang on 2010/12/14.
//  Copyright 2010 Edward in Action. All rights reserved.
//

#import "DoubleComponentPickerViewController.h"


@implementation DoubleComponentPickerViewController
@synthesize doublePicker;
@synthesize fillingTypes;
@synthesize breadTypes;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	NSArray *breadArray = [[NSArray alloc] initWithObjects: @"White", @"Whole Wheat", @"Rye", @"Sourdough", @"Seven Grain", nil];
	self.breadTypes = breadArray;
	[breadArray release];
	
	NSArray *fillingArray = [[NSArray alloc] initWithObjects:@"Ham", @"Turkey", @"Peanut Butter", @"Tuna Salad", @"Chicken Salad", @"Roast Beef", @"Vegemite", nil];
	self.fillingTypes = fillingArray;
	[fillingArray release];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[doublePicker release];
	[breadTypes release];
	[fillingTypes release];
    [super dealloc];
}

#pragma mark implementation
- (IBAction) buttonPressed {
	NSInteger breadRow = [doublePicker selectedRowInComponent:kBreadComponent];
	NSInteger fillingRow = [doublePicker selectedRowInComponent:kFillingComponent];
	
	NSString *bread = [breadTypes objectAtIndex:breadRow];
	NSString *filling = [fillingTypes objectAtIndex:fillingRow];
	
	NSString *message = [[NSString alloc] initWithFormat:@"Your %@ on %@ bread will right up.", filling, bread];
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Thank you for your order" message:message delegate:nil cancelButtonTitle:@"Great!" otherButtonTitles:nil];
	
	[alert show];
	[alert release];
	[message release];
}

#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
	return 2;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	// check which component the picker is asking about 
	// and return the correct row count for the corresponding array
	if (component == kBreadComponent)
		return [self.breadTypes count];
	
	return [self.fillingTypes count];
}
#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	// check which component the picker is asking about 
	// and return the correct row count for the corresponding array
	if (component == kBreadComponent) {
		return [self.breadTypes objectAtIndex:row];
	}
	return [self.fillingTypes objectAtIndex:row];
}

@end
