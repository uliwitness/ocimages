//
//  AppDelegate.swift
//  TestApp
//
//  Created by Uli Kusterer on 29.07.17.
//  Copyright © 2017 Uli Kusterer. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	func applicationDidFinishLaunching(_ aNotification: Notification) {
		let myImage = NSImage(named: Assets.AppIcon)
		Swift.print("myImage = \(myImage)")
		
		NSApplication.shared().terminate(self)
	}
}

