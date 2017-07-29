//
//  ObjCTest.m
//  ocimages
//
//  Created by Uli Kusterer on 29.07.17.
//  Copyright © 2017 Uli Kusterer. All rights reserved.
//

#import "ObjCTest.h"
#import "ULIAssets.h"
#import <Cocoa/Cocoa.h>


@implementation ObjCTest

+(void) testObjCStuff
{
	NSLog( @"image in objc = %@", [NSImage imageNamed: ULIAssetsAppIcon] );
}

@end
