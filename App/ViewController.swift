import UIKit
import ImportSwift
import Swift2
import CryptoSwift

public let testVar = "SampleValue"

class ViewController: UIViewController {

  let value = "ViewName"

  override func viewDidLoad() {
    super.viewDidLoad()

    let view = UIView()
    view.frame = self.view.frame
    view.backgroundColor = .gray
    self.view = view

    let label = UILabel()
    label.text = "Main Screen"
    self.view.addSubview(label)
    label.sizeToFit()
    label.center = self.view.center
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    // Swift class defined in ImportSwift
    let c = Counter()
    print("Import Swift: \(c)")

    // Swift class defined in Swift2
    let s = SwiftClass2()
    print("Swift2: \(s)")

    // From CryptoSwift
    let data = Data(bytes: [0x01, 0x02, 0x03])
    print("Crypto: \(data)")

    // Objective C class defined in Objc1
    // When this is uncommented, LLDB fails to print objects properly
    // with the following error:
    //   failed to get module 'ExampleAppLibrary' from AST context:
    //   error: missing required module 'Objc1'
//    let o = Objc1()
//    print("Objc1: %s", o)

    // Swift class defined in SwiftAndObjc
    // When this is used, the compile fails with 
    //    #import <SwiftAndObjc/SwiftAndObjc-Swift.h> file not found
    // print("SwiftAndObjc \(Swift3())")
  }
}
