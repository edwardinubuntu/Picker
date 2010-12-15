//
//  DatePickerViewController.m
//  Pickers
//
//  Created by Edward Chiang on 2010/12/14.
//  Copyright 2010 Edward in Action. All rights reserved.
//

#import "DatePickerViewController.h"


@implementation DatePickerViewController

@synthesize datePicker;

-(IBAction)buttonPressed { 
	NSDate *selected = [datePicker date];
	NSString *message = [[NSString alloc] initWithFormat:@"The date and time you selected is: %@", selected];
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Date and Time Selected" message:message 
												   delegate:nil cancelButtonTitle:@"Yes, I did." otherButtonTitles:nil];
	[alert show];
	[alert release];
	[message release];
}

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
	NSDate *now = [[NSDate alloc] init];
	datePicker.timeZone = [NSTimeZone localTimeZone];
	[datePicker setDate:now animated:NO];
	[now release];
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
	self.datePicker = nil;
}


- (void)dealloc {
	[datePicker release];
    [super dealloc];
}


@end
