//
//  GPUContext.swift
//  Aluminum
//
//  Created by Aiden Mitchell on 2026-05-25.
//

import Metal

final class GPUContext {
    let device: MTLDevice
    let commandQueue: MTLCommandQueue
    
    init() {
        guard let device = MTLCreateSystemDefaultDevice() else {
            fatalError("Metal somehow doesn't work here.")
        }
        guard let queue = device.makeCommandQueue() else {
            fatalError("Could not create command queue.")
        }
        self.device = device
        self.commandQueue = queue
    }
}
