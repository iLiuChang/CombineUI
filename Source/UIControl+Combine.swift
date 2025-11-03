//
//  UIControl+Combine.swift
//  CombineUI
//
//  Created by LC on 2025/10/30.
//

import Combine
import UIKit

public extension CombineUIWrapper where Base: UIControl {
    func controlEventPublisher(for events: UIControl.Event) -> AnyPublisher<Void, Never> {
        UIControlEventPublisher(control: base, events: events)
                  .eraseToAnyPublisher()
    }
}

