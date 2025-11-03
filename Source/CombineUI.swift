//
//  CombineUI.swift
//  CombineUI
//
//  Created by LC on 2025/10/30.
//

import UIKit
import Combine
public struct CombineUIWrapper<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol CombineUICompatible: AnyObject { }

public protocol CombineUICompatibleValue {}

extension CombineUICompatible {
    public var cui: CombineUIWrapper<Self> {
        get { return CombineUIWrapper(self) }
        set { }
    }
}

extension CombineUICompatibleValue {
    public var cui: CombineUIWrapper<Self> {
        get { return CombineUIWrapper(self) }
        set { }
    }
}

extension NSObject: CombineUICompatible { }
extension AnyCancellable: CombineUICompatibleValue { }


