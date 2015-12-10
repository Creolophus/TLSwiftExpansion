//
//  Delay.swift
//  TLSwiftExpansionDemo
//
//  Created by Creolophus on 12/10/15.
//  Copyright © 2015 Creolophus. All rights reserved.
//

import Foundation

typealias Task = (cancel: Bool) -> ()

func delay(time:NSTimeInterval, task:()->()) -> Task? {
    func dispatch_later(block:()->()) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(time * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), block)
    }
    
    var closure: dispatch_block_t? = task
    var result: Task?
    
    let delayedClosure: Task = { cancel in
        if let internalClosure = closure
    }
}