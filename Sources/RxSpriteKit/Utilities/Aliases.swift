import Foundation

#if os(iOS) || os(tvOS) || os(watchOS)
    import UIKit
    public typealias RSKLineBreakMode = NSLineBreakMode
    public typealias RSKColor = UIColor
#else
    import Cocoa
    public typealias RSKLineBreakMode = NSParagraphStyle.LineBreakMode
    public typealias RSKColor = NSColor
#endif
