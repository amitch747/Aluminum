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

        
    var win: NSWindow!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create window. Wire in metal view.
        win = NSWindow(
            contentRect: NSRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 1280, height: 720)),
            styleMask: [.titled, .closable, .resizable, .miniaturizable],
            backing: .buffered,
            defer: false
        )
        win.title = "Aluminum"
        win.center()
        win.makeKeyAndOrderFront(nil)
        
        let gpu = GPUContext()
        let renderView = RenderView(frame: win.contentView!.bounds, gpu: gpu)
        
        NSApp.activate(ignoringOtherApps: true)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Not guaranteed to run if app is force closed.
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        // Probably do not need to touch this.
        return true
    }


}

