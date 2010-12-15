//
//  SingleComponentPickerViewController.m
//  Pickers
//
//  Created by Edward Chiang on 2010/12/14.
//  Copyright 2010 Edward in Action. All rights reserved.
//

#import "SingleComponentPickerViewController.h"


@implementation SingleComponentPickerViewController

@synthesize singlePicker;
@synthesize pickerData;

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

- (IBAction)buttonPressed {
	NSInteger row = [singlePicker selectedRowInComponent:0];
	NSString *selected = [pickerData objectAtIndex:row];
	NSString *title = [[NSString alloc] initWithFormat:@"You selected %@!", selected];
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:@"Thank you for choosing." delegate:nil cancelButtonTitle:@"You're Welcome" otherButtonTitles:nil];
	
	[alert show];
	[alert release];
	[title release];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	NSArray *array = [[NSArray alloc] initWithObjects:@"Luke",@"Leia",@"Han",@"Chewbacca",@"Artoo",@"Threepio",@"Lando", nil];
	self.pickerData = array;
	[array release];
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
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
	self.singlePicker = nil;
	self.pickerData = nil;
	[super viewDidUnload];
}


- (void)dealloc {
	[singlePicker release];
	[pickerData release];
    [super dealloc];
}

#pragma mark -
#pragma mark Picker Data Source Methods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	return [pickerData count];
}
#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	return [pickerData objectAtIndex:row];
}

@end
