//
//  File.swift
//  CounterSwiftUI
//
//  Created by Songyao Huang on 6/4/2025.
//

import Foundation
import Alamofire

public class WSNetworkReachableManager: @unchecked Sendable {
    public enum WSRechabilityStatus: Sendable {
        // 未知类型
        case unknown
        
        // 无网络
        case notReachable
        
        // 有网络，网络类型 -> WSNetworkStats
        case reachable(WSNetworkStats)
        
        // 网络类型
        public enum WSNetworkStats: Sendable {
            // 移动网络
            case cellular
            
            // WiFi网络
            case wifi
        }
    }
}

public func listener(action: @escaping (WSNetworkReachableManager.WSRechabilityStatus) -> Void) {
    let reachable = NetworkReachabilityManager()
    reachable?.startListening { status in
//        switch status {
//            
//        case NetworkReachabilityManager.NetworkReachabilityStatus.notReachable:
//            action(WSNetworkReachableManager.WSRechabilityStatus.notReachable)
//        case NetworkReachabilityManager.NetworkReachabilityStatus.unknown:
//            action(WSNetworkReachableManager.WSRechabilityStatus.unknown)
//            
//        }
    }
}

