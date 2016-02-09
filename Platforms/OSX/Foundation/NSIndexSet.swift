
class IndexSet : Object, Copying, MutableCopying, SecureCoding {
  init(indexesIn range: NSRange)
  init(indexSet: IndexSet)
  convenience init(index value: Int)
  func isEqual(to indexSet: IndexSet) -> Bool
  var count: Int { get }
  var firstIndex: Int { get }
  var lastIndex: Int { get }
  func indexGreaterThanIndex(value: Int) -> Int
  func indexLessThanIndex(value: Int) -> Int
  func indexGreaterThanOrEqual(to value: Int) -> Int
  func indexLessThanOrEqual(to value: Int) -> Int
  func getIndexes(indexBuffer: UnsafeMutablePointer<Int>, maxCount bufferSize: Int, inIndexRange range: RangePointer) -> Int
  @available(OSX 10.5, *)
  func countOfIndexes(in range: NSRange) -> Int
  func contains(value: Int) -> Bool
  func contains(in range: NSRange) -> Bool
  func contains(indexSet: IndexSet) -> Bool
  func intersectsIndexes(in range: NSRange) -> Bool
  @available(OSX 10.6, *)
  func enumerate(block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerate(opts: EnumerationOptions = [], usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func enumerate(in range: NSRange, options opts: EnumerationOptions = [], usingBlock block: (Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.6, *)
  func indexPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func index(opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func index(in range: NSRange, options opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(OSX 10.6, *)
  func indexesPassingTest(predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(OSX 10.6, *)
  func indexes(opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(OSX 10.6, *)
  func indexes(in range: NSRange, options opts: EnumerationOptions = [], passingTest predicate: (Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(OSX 10.7, *)
  func enumerateRanges(block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.7, *)
  func enumerateRanges(opts: EnumerationOptions = [], usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.7, *)
  func enumerateRanges(in range: NSRange, options opts: EnumerationOptions = [], usingBlock block: (NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  convenience init()
  func copyWith(zone: Zone = nil) -> AnyObject
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension IndexSet : SequenceType {
  func generate() -> NSIndexSetGenerator
  typealias Generator = NSIndexSetGenerator
  typealias SubSequence = AnySequence<Element>
}
class MutableIndexSet : IndexSet {
  func add(indexSet: IndexSet)
  func remove(indexSet: IndexSet)
  func removeAllIndexes()
  func add(value: Int)
  func remove(value: Int)
  func add(in range: NSRange)
  func remove(in range: NSRange)
  func shiftIndexesStarting(at index: Int, by delta: Int)
  init(indexesIn range: NSRange)
  init(indexSet: IndexSet)
  convenience init(index value: Int)
  convenience init()
  init?(coder aDecoder: Coder)
}
