import Foundation

#if canImport(Dog)
import Dog
#endif

@objcMembers open class Cat: Dog {

    public func catIsHiding() -> String {
        bark()
    }
}
