import Quick
import Nimble

class DemoSpec: QuickSpec {
  override func spec() {
    describe("Demo") {
      it("runs") {
        expect(true).to(beTruthy())
      }
    }
  }
}