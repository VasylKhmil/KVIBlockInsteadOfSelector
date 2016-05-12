//
//  Extensions.swift
//  LIVEStadium
//
//  Created by Vasyl Khmil on 2/29/16.
//  Copyright © 2016 LIVEStadium. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    convenience init(image: UIImage?, style: UIBarButtonItemStyle, action: KVISelectorWrapper.SimpleAction) {
        
        let wrapper = KVISelectorWrapper(action: action)
        
        self.init(image: image, style: style, target: wrapper, action: "invoke")
        
        objc_setAssociatedObject(self, "wrapper", wrapper, .OBJC_ASSOCIATION_RETAIN)    //target has weak referance in UIBarButtonItem, so we need to retain wrapper
        
    }
    
    convenience init(barButtonSystemItem: UIBarButtonSystemItem, action: KVISelectorWrapper.SimpleAction) {
        
        let wrapper = KVISelectorWrapper(action: action)
        
        self.init(barButtonSystemItem: .Done, target: wrapper, action: "invoke")
        
        objc_setAssociatedObject(self, "wrapper", wrapper, .OBJC_ASSOCIATION_RETAIN)    //target has weak referance in UIBarButtonItem, so we need to retain wrapper   
    }
}

extension UIButton {
    
    func addActionForControlEvent(event: UIControlEvents, action: KVISelectorWrapper.SimpleAction) {
        let wrapper = KVISelectorWrapper(action: action)
        
        self.addTarget(wrapper, action: "invoke", forControlEvents: event)
        
        objc_setAssociatedObject(self, "wrapper", wrapper, .OBJC_ASSOCIATION_RETAIN)    //target has weak referance in UIBarButtonItem, so we need to retain wrapper
    }
}
