//
//  CheckConnectivitySwift.swift
//  FIMS
//
//  Created by Piyush Rathi on 23/01/17.
//  Copyright © 2017 Kahuna Systems. All rights reserved.
//

import UIKit

//import sys/socket.h
//import netinet/in.h>
//#import <SystemConfiguration/SystemConfiguration.h>

public class CheckConnectivitySwift: NSObject {

    static let sharedInstance: CheckConnectivitySwift = {
        let instance = CheckConnectivitySwift()
        return instance
    }()

    override init() {
        super.init()
    }

    /* =============================================================
    // Connectivity testing code
    =============================================================== */
  public class func hasConnectivity() -> Bool {

        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(sizeofValue(zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)

        guard let defaultRouteReachability = withUnsafePointer(&zeroAddress, {
           SCNetworkReachabilityCreateWithAddress(nil, UnsafePointer($0))
        }) else {
            return false
        }

        var flags: SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
            return false
        }

        let isReachable = flags.contains(.Reachable)
        let needsConnection = flags.contains(.ConnectionRequired)

        return (isReachable && !needsConnection)
    }

}
