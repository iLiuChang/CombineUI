//
//  UITextView+Combine.swift
//  CombineUI
//
//  Created by LC on 2025/10/31.
//

import Combine
import UIKit

public extension CombineUIWrapper where Base: UITextView {
    var textPublisher: AnyPublisher<String?, Never> {
        Publishers.Merge(
            NotificationCenter.default.publisher(for: UITextView.textDidChangeNotification, object: base)
                .map { ($0.object as? UITextView)?.text },
            
            base.publisher(for: \.text)
        )
        .eraseToAnyPublisher()
    }
}
