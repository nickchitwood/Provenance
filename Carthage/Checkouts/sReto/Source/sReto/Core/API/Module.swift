//
//  Module.swift
//  sReto
//
//  Created by Julian Asamer on 12/08/14.
//  Copyright (c) 2014 - 2016 Chair for Applied Software Engineering
//
//  Licensed under the MIT License
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//  The software is provided "as is", without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness
//  for a particular purpose and noninfringement. in no event shall the authors or copyright holders be liable for any claim, damages or other liability, 
//  whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.
//

/**
* A Reto module encapsulates a networking technology that can be passed to a LocalPeer.
* It consists of an Advertiser that advertises peers (i.e. makes the local peer discoverable), and a Browser that finds other peers (i.e. discovers other peers).
*/
open class Module : NSObject {
    /** The Module's advertiser */
    var advertiser: Advertiser!
    /** The Module's browser */
    var browser: Browser!

    var dispatchQueue: DispatchQueue!
    /** 
    * If the Module requires a disptach queue for asynchronous operations, the LocalPeer will call setDispatch queue with the networking dispatch queue.
    * It is expected that delegate methods will be called on this dispatch queue.
    */

    public init(advertiser: Advertiser, browser: Browser) {
        self.advertiser = advertiser
        self.browser = browser
    }

    public override init() {

    }

    public init(dispatchQueue: DispatchQueue) {
        self.dispatchQueue = dispatchQueue
    }
}
