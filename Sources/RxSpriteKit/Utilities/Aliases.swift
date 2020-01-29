import Foundation

#if os(iOS) || os(tvOS) || os(watchOS)
    import UIKit
    public typealias RSKColor = UIColor
#else
    import Cocoa
    public typealias RSKColor = NSColor
#endif
public typealias RSKLineBreakMode = NSLineBreakMode
