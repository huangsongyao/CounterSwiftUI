// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CounterSwiftUI",

    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.9.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.10.2")
    ],
    
    targets: [
        .executableTarget(name: "CounterSwiftUI",
                          dependencies: [
                      "RxSwift",
                      "Alamofire",
                          ],
                         )
    ],
)

