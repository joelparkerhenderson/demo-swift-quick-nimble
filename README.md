# Demo Swift Quick Nimble 

<img src="README.png" alt="Quick" style="width: 100%;"/>

This demonstration shows:

 * The [Swift](http://swift.org) programming language with
   [Apple](http://apple.com)
   [Xcode](https://developer.apple.com/xcode/)
   [iOS](http://www.apple.com/ios/)

  * The [Quick](github.com/quick/quick) behavior-driven development framework.

  * The [Nimble](github.com/quick/nimble) matcher framework also for also both languages.

We use Quick and Nimble for [Test Driven Development (TDD)](https://en.wikipedia.org/wiki/Test-driven_development)

Quick and Nimble are inspired by RSpec, Specta, and Ginkgo.

This README describes how to create the demo.


## Start

To use this demo, you can clone this repo, or you can use this README to create your own project.

If you clone this repo, then be aware that there are multiple git branches, so pick the one you want.

  * swift-4-xcode-9: Swift version 4, Xcode version 9, iOS version 11.

  * swift-3-xcode-8: Swift version 3, Xcode version 8, iOS version 10.


## Create the project

Launch Xcode and create a new project. 

  * Use iOS template "Single View Application" and Product Name "Demo Swift Quick Nimble".

  * [Help](doc/setup/create_a_new_xcode_project.md)

Add Quick and Nimble. We suggest using Carthage or Cocoapods.

  * Carthage Cartfile.private:

    ```
    github "Quick/Quick"
    github "Quick/Nimble"
    ```

  * [Help](doc/setup/add_carthage_frameworks.md)

The Carthage setup has two areas that are specific to testing.

  * In the center area of Xcode, near the top, there is a select box that lets you change the target. 

  * The default target says "Demo Swift Quick Nimble" because this is the typical app.

  * Change the target to say "Demo Swift Quick NimbleTests" because this is the test target.

  * In the test target `Build Phases`, edit the section `Link Binary With Libraries`, and add the Quick framework and Nimble framework.

  * Be sure to create the `Run Phase` in the test target, and not in the main application target.



## Create a test

The project automatically creates two test folders and files.

```shell
Demo Swift Quick NimbleTests/Demo Swift Quick NimbleTests.swift
Demo Swift Quick NimbleUITests/Demo Swift Quick NimbleUITests.swift
```

Edit `Demo Swift Quick NimbleTests.swift`.

Delete all the existing code because it is for XCTest, not Quick and Nimble.

Add this code:

```swift
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
```


## Run

To run the test, choose the menu Product → Test.

  * The simulator launches.

  * The Xcode status changes to "Testing...".
  
  * You see a popup that says "Test Succeeded".

If you use the editor to view the file "Demo Swift Quick NimbleTests.swift", then you see a green diamond check box, which confirms the test ran and succeeded.

If you get the error "No such module 'Quick'" then you may need to delete derived data.

  * To delete derived data by using the command line:

      ```shell
      rm -rf ~/Library/Developer/Xcode/DerivedData
      ```

  * To delete derived data by using the Xcode GUI: Window → Projects → See the "Derived Data" line → click the button "Delete..."


## Tracking

* Package: demo_swift_quick_nimble
* Version: 3.0.0
* Created: 2016-04-09
* Updated: 2017-09-22
* License: BSD, GPL, MIT
* Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
