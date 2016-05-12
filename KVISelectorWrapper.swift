//
//  KVISelectorWrapper.swift
//  LIVEStadium
//
//  Created by Vasyl Khmil on 2/29/16.
//  Copyright © 2016 LIVEStadium. All rights reserved.
//

import Foundation

class KVISelectorWrapper: NSObject {
    
    //MARK: Typealiases
    
    typealias SimpleAction = () -> Void
    
    let action: SimpleAction
    
    //MARK: Initialization
    
    init(action: SimpleAction) {
        self.action = action
        
        super.init()
    }
    
    //MARK: Public
    
    func invoke() {
        self.action()
    }
}