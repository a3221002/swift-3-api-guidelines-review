
@available(OSX 10.11, *)
enum NWPathStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Invalid
  case Satisfied
  case Unsatisfied
  case Satisfiable
}
@available(OSX 10.11, *)
class NWPath : Object {
  @available(OSX 10.11, *)
  var status: NWPathStatus { get }
  @available(OSX 10.11, *)
  var isExpensive: Bool { get }
  @available(OSX 10.11, *)
  func isEqualTo(path: NWPath) -> Bool
  init()
}