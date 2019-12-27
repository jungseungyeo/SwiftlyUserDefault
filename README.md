# SwiftlyUserDefault

![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
![CocoaPods](http://img.shields.io/cocoapods/v/SwiftlyUserDefault.svg)
![License](https://img.shields.io/badge/Licence-MIT-green.svg)

## Installation

```ruby
pod 'SwiftlyUserDefault'
```

---

## Example

Create an enum that conforms to SwiftlyUserDefaultable

```Swift
import SwiftlyUserDefault

enum UserDefeaultkey: SwiftlyUserDefaultable {
    case arrayKey
    case intKey

    var key: String {
        switch self {
        case .arrayKey:
            return "arrayKey"
        case .intKey:
            return "intKey"
        }
    }
}
```

Create a variable to extend SwiftlyUserDefault.

```Swift
import SwiftlyUserDefault

extension SwiftlyUserDefault {
    static var arrayValue: [String]? {
        set { self.setValue(UserDefeaultkey.arrayKey, value: newValue) }
        get { self.getValue(UserDefeaultkey.arrayKey) }
    }

    static var intValue: Int? {
      set { self.setValue(UserDefeaultkey.intKey, value: newValue) }
      get { self.getValue(UserDefeaultkey.intKey) }
    }
}
```

How to use

```Swift
import SwiftlyUserDefault

override func viewDidLoad() {
    super.viewDidLoad()

   // Save UserDefault value
   SwiftlyUserDefault.arrayValue = ["text", "text", "text", "text"]  

   // Get UserDefault Value
   let testArrayValue = SwiftlyUserDefault.arrayValue // <- This is Type optional Array Value

   // Save UserDefault value
   SwiftlyUserDefault.intValue = 1  

   // Get UserDefault Value
   let testIntValue = SwiftlyUserDefault.intValue // <- This is Type optional Int Value

}
```

## Author

[LinSaeng](https://github.com/jungseungyeo)

## License

SwiftlyUserDefault is licensed under the MIT license. Check the [LICENSE](/LICENSE) file for details.
