//
//  RenderView.swift
//  Aluminum
//
//  Created by Aiden Mitchell on 2026-05-25.
//

import Metal
import Cocoa
import QuartzCore

final class RenderView: NSView {
    
    // NSView's self.layer is CALayer. Avoid casting with this.
    var metalLayer: CAMetalLayer {
        return self.layer as! CAMetalLayer
    }
    
    init(frame frameRect: NSRect, gpu: GPUContext) {
        super.init(frame: frameRect)
        // Use layer instead of CPU drawn view
        self.wantsLayer = true
        
        metalLayer.device = gpu.device
        metalLayer.pixelFormat = .bgra8Unorm
    }
    
    // Ignore
    required init?(coder: NSCoder) {
        fatalError("RenderView is not used with XIB.")
    }
    
    // Dictates to AppKit that CAMetalLayer is to be used over CALayer
    override func makeBackingLayer() -> CALayer {
        return CAMetalLayer()
    }
    
}
