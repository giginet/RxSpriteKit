import Foundation

#if os(macOS)
    import Cocoa
    public typealias RSKColor = NSColor
#else
    import UIKit
    public typealias RSKColor = UIColor
#endif
