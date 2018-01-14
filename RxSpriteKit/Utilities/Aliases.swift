import Foundation

#if os(macOS)
    import Cocoa
    public typealias RSKLineBreakMode = NSParagraphStyle.LineBreakMode
    public typealias RSKColor = NSColor
#else
    import UIKit
    public typealias RSKLineBreakMode = NSLineBreakMode
    public typealias RSKColor = UIColor
#endif
