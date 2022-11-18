import Foundation

#if canImport(Cat)
import Cat
#endif

@objcMembers public class House: Wednesday {

    public func petSounds() -> String {
        catIsHiding()
    }
}
