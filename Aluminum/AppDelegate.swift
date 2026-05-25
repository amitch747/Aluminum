//
//  AppDelegate.swift
//  Aluminum
//
//  Created by Aiden Mitchell on 2026-05-24.
//

// For NSWindow, NSView.
import Cocoa

// NSObject is the superclass. Everything after first keyword is a protocol.
@main
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create window. Wire in metal view.
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Not guaranteed to run if app is force closed.
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        // Probably do not need to touch this.  
        return true
    }


}

