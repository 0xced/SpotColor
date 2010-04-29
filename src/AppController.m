//
//  AppController.m
//  Spot Color
//
//  Created by Zach Waugh on 2/17/09.
//  Copyright 2009 zachwaugh.com. All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (void)awakeFromNib
{
	NSColorPanel *colorPanel = [NSColorPanel sharedColorPanel];
	[colorPanel setTitle:@"Spot Color"];
	[colorPanel setShowsAlpha:YES];
	[colorPanel setDelegate:self];
	[colorPanel setFloatingPanel:[[NSUserDefaults standardUserDefaults] boolForKey:@"floatingPanel"]];
	[colorPanel setHidesOnDeactivate:NO];
	[colorPanel setShowsAlpha:YES];
	[colorPanel makeKeyAndOrderFront:nil];
	[colorPanel bind:@"floatingPanel" toObject:[NSUserDefaultsController sharedUserDefaultsController] withKeyPath:@"values.floatingPanel" options:nil];
}

// Make sure app quits after panel is closed
- (void)windowWillClose:(NSNotification *)notification
{
	[[NSApplication sharedApplication] terminate:nil];
}

@end
