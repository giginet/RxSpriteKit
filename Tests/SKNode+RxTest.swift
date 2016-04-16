import Quick
import Nimble
import RxSwift
import SpriteKit
@testable import RxSpriteKit

class SKNodeRxTests: QuickSpec {
    override func spec() {
        describe("SKNode extension") {            
            it("rx_position") {
                expect(1 + 1).to(equal(2))
            }
        }
    }
}
